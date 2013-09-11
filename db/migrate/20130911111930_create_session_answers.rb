class CreateSessionAnswers < ActiveRecord::Migration
  def change
    create_table :session_answers do |t|
      t.integer :session_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
