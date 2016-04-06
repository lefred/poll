class ChangeTypeToQuestions < ActiveRecord::Migration
  def change
    change_column_default :questions, :q_type, 1
  end
end
