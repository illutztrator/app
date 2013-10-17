class ChangeColNameOnProblemTables < ActiveRecord::Migration
  def change
  	rename_column :problems, :question_id, :item_id
  	rename_column	:questionproblems, :question_id, :item_id
  end
end
