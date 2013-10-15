class UpdateSetquestionlinks < ActiveRecord::Migration
  def change
  	#rename_table :setquestionlinks, :setItems
  	add_column :setItems, :type, :string
  end
end
