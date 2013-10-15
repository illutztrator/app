class UpdateAnswerSwitchColNameforItemId < ActiveRecord::Migration
  def change
  	rename_column :answer_switches, :item_id, :setItemId
  end
end
