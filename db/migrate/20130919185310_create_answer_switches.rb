class CreateAnswerSwitches < ActiveRecord::Migration
  def change
    create_table :answer_switches do |t|
      t.integer :question_id
      t.string :answer
      t.integer :nextQuestion

      t.timestamps
    end
  end
end
