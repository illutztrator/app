class CreateSetCompilationLinks < ActiveRecord::Migration
  def change
    create_table :set_compilation_links do |t|
      t.integer :set_id
      t.integer :setcompilation_id

      t.timestamps
    end
  end
end
