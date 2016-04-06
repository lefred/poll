class AddTypeToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :q_type, :integer
  end
end
