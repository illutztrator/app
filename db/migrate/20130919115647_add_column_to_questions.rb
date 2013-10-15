class AddColumnToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :needs_insertion, :boolean
  	add_column :questions, :answer_id, :integer
  end
end
