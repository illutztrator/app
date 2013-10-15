class CreateSetcompilations < ActiveRecord::Migration
  def change
    create_table :setcompilations do |t|
      t.string :name
      t.string :theme

      t.timestamps
    end
  end
end
