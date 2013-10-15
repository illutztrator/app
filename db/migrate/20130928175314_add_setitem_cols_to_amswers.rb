class AddSetitemColsToAmswers < ActiveRecord::Migration
  def change
  	add_column :answers, :set_id, :integer
  	add_column :answers, :setItemId, :integer
  end
end
