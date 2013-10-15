class RenameTextInsertIdCol < ActiveRecord::Migration
	def change
  	rename_column :texts, :answer_of_question_id, :answer_of_setItem
  end
end