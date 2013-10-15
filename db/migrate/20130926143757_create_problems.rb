class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.integer :question_id
      t.text :problem
      t.integer :user_id

      t.timestamps
    end
  end
end
