class CreateQuestiongroups < ActiveRecord::Migration
  def change
    create_table :questiongroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
