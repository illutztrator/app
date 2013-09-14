class CreateSetquestionlinks < ActiveRecord::Migration
  def change
    create_table :setquestionlinks do |t|
      t.integer :set_id
      t.integer :question_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
