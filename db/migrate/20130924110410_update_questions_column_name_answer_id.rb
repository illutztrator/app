class UpdateQuestionsColumnNameAnswerId < ActiveRecord::Migration
  def change
  	rename_column :questions, :answer_id, :answer_for_question_id
  end
end
