class UpdateSetItems < ActiveRecord::Migration
  def change
  	rename_column :setItems, :question_id, :item_id
  end
end
