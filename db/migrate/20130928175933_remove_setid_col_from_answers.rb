class RemoveSetidColFromAnswers < ActiveRecord::Migration
  def change
  	remove_column :answers, :set_id
  end
end
