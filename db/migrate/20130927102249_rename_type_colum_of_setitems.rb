class RenameTypeColumOfSetitems < ActiveRecord::Migration
  def change
  	rename_column :setItems, :type, :itemtype
  end
end
