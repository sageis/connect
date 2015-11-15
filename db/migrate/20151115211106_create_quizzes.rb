class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
	  t.float :writing
	  t.float :speaking
	  t.float :persuading
	  t.float :taking_initiative
	  t.float :analyzing
	  t.float :creating
	  t.float :problem_solving
	  t.float :helping
	  t.float :physical_activities
	  t.float :organizing
	  t.float :team_work
	  t.float :investigating
	  t.float :build
	  t.float :growth
	  t.float :money
	  t.float :security  
	  t.integer :user_id
	  t.integer :profession_id   
      t.timestamps null: false
    end
  end
end
