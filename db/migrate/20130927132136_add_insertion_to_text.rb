class AddInsertionToText < ActiveRecord::Migration
  def change
		add_column :texts, :needs_insertion, :bool
		add_column :texts, :question_id_for_answer, :integer  
  end
end
