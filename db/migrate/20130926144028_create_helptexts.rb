class CreateHelptexts < ActiveRecord::Migration
  def change
    create_table :helptexts do |t|
      t.integer :question_id
      t.text :text

      t.timestamps
    end
  end
end
