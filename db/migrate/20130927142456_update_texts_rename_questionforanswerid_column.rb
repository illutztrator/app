class UpdateTextsRenameQuestionforansweridColumn < ActiveRecord::Migration
  def change
  	rename_column :texts, :question_id_for_answer, :answer_of_question_id
  	rename_column :questions, :answer_for_question_id, :answer_of_question_id
  end
end
