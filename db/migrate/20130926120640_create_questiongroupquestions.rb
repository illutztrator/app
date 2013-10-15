class CreateQuestiongroupquestions < ActiveRecord::Migration
  def change
    create_table :questiongroupquestions do |t|
      t.integer :questiongroup_id
      t.integer :question_id
      t.integer :position

      t.timestamps
    end
  end
end
