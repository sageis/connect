class GiveSageQuizResults < ActiveRecord::Migration
  def up
  	results = Quiz.new(:writing => 1, :speaking => 1, :persuading => 0, 
  					   :taking_initiative => 0.5, :analyzing => 0.5, :creating => 1,
  					   :problem_solving => -0.5, :helping => 0, :physical_activities => 0.5,
  					   :organizing => 0, :team_work => -1, :investigating => -0.5, :build => 1,
  					   :growth => 0.5, :money => 0.5, :security => 0)
  	results.save(:validate => false)
  	si2 = User.new(:first_name =>"Sage2", :last_name => "Isabella2")
    
    si2.quiz = results
    si2.quiz_id = results.id
    si2.save(:validate => false)
  end
end
