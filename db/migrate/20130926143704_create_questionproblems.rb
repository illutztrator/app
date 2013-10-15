class CreateQuestionproblems < ActiveRecord::Migration
  def change
    create_table :questionproblems do |t|
      t.integer :question_id
      t.integer :problemcount

      t.timestamps
    end
  end
end
