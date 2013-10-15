class UpdateAnswerSwitchColumnNames < ActiveRecord::Migration
  def change
  	rename_column :answer_switches, :question_id, :item_id
  	rename_column	:answer_switches, :nextQuestion, :next_item_id
  end
end
