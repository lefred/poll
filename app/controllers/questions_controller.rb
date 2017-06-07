class QuestionsController < ApplicationController

  before_filter :set_question, only: [:show, :results]
  before_filter :check_secret_is_unique, only: [:create]

  def new
    @question = Question.new
    @option = Option.new
  end

  def create
    @question = Question.new(question_params)
    @question.secret = SecureRandom.urlsafe_base64(nil, false)[0, 5] unless @question.secret?
    if @question.q_type != 2
        @question.q_type = 1
    end
    @question.save!

    params[:options].each_with_index do |option, index|
      if option[:title] != ""
        new_option = Option.new
        new_option.title = option[:title]
        new_option.question_id = @question.id
        if params.include? :answer
            if params[:answer][index.to_s] == "1" && @question.q_type == 2
                new_option.correct = 1
            elsif @question.q_type == 2
                new_option.correct = 0
            end
        end
        new_option.save!
      end
    end
    redirect_to "/#{@question.secret}"
  end

  def show
    vote_id = cookies["vote_#{@question.secret}"]
    @vote = Vote.where({secret: vote_id}).first_or_initialize
  end

  def results
    @options = @question.options
    @qr = RQRCode::QRCode.new("lefred.be:3000/"+@question.secret, :size => 3, :level => :h).to_img.resize(300, 300).to_data_url

  end

  def check_secret_availability
    render json: { available: !Question.where({secret: params[:secret]}).exists? }
  end

  private

  def set_question
    @question = Question.where({secret: params[:secret]}).first
  end

  def question_params
    params.require(:question).permit(:title, :secret, :q_type)
  end

  def check_secret_is_unique
    if defined? params[:question][:secret]
      if Question.where({secret: params[:question][:secret]}).exists?
        @question = Question.new(question_params)
        redirect_to :back, notice: 'Sorry that URL is taken'
      end
    end
  end

end
