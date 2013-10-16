class RenameSetitemsabcCol < ActiveRecord::Migration
  def change
  	rename_table :setitemsabc, :setitems
  end
end
