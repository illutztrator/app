class UpdateSession < ActiveRecord::Migration
  def change
  	add_column :sessions, :topic, :string 
  	add_column :sessions, :ancestor_id, :integer
  end
end
