class RenameSetitemsCol < ActiveRecord::Migration
  def change
  	rename_table :setItems, :setitemsabc
  end
end
