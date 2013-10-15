class UpdateAnswerSwitchColNameforNextitemId < ActiveRecord::Migration
  def change
  	rename_column :answer_switches, :next_item_id, :next_setitemid
  end
end
