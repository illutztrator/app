class UpdateQuestionsAddCheckAgainstCol < ActiveRecord::Migration
  def change
  	add_column :questions, :check_against, :bool
  end
end
