class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :sessionid
      t.integer :user_id
      t.timestamp :date
      t.boolean :completed

      t.timestamps
    end
  end
end
