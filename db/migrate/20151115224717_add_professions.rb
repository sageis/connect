class AddProfessions < ActiveRecord::Migration
	def up
		profession1 = Profession.new(:title => "Software Engineer", :description =>
									"Computer science is a profession!",
									:file_name => "computer_science.jpg")
		quiz1 = Quiz.new(:analyzing => 1, :creating => 1, :team_work => 1,
						:build => 1, :writing => 0, :speaking => 0, :persuading => 0,
						:taking_initiative => 0, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 0,
						:growth => 1, :money => 1, :security => 0)
		quiz1.save(:validate => false)
		profession1.quiz_id = quiz1.id
		profession1.save(:validate => false)

		# profession2 = Profession.new(:title => "Public Speaker", :description =>
		# 							"Public Speaking is a profession!",
		# 							:file_name => "public_speaker.jpg")
		# quiz2 = Quiz.new(:analyzing => 0, :creating => 0, :team_work => 0,
		# 				:build => 0, :writing => 0, :speaking => 1, :persuading => 1,
		# 				:taking_initiative => 1, :problem_solving => 0, :helping => 0,
		# 				:physical_activities => 0, :organizing => 0, :investigating => 0,
		# 				:growth => 1, :money => 0, :security => 0)
		# quiz2.save(:validate => false)
		# profession2.quiz_id = quiz2.id
		# profession2.save(:validate => false)

		profession3 = Profession.new(:title => "Real Estate Agent", :description =>
									"Real Estate agent is a profession!",
									:file_name => "real_estate_agent.jpg")
		quiz3 = Quiz.new(:analyzing => 0, :creating => 0, :team_work => 0,
						:build => 0, :writing => 0, :speaking => 0, :persuading => 1,
						:taking_initiative => 1, :problem_solving => 0, :helping => 0,
						:physical_activities => 1, :organizing => 1, :investigating => 0,
						:growth => 1, :money => 1, :security => 0)
		quiz3.save(:validate => false)
		profession3.quiz_id = quiz3.id
		profession3.save(:validate => false)

		profession4 = Profession.new(:title => "Professor", :description =>
									"Professor is a profession!",
									:file_name => "professor.jpg")
		quiz4 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 0,
						:build => 0, :writing => 1, :speaking => 1, :persuading => 0,
						:taking_initiative => 1, :problem_solving => 0, :helping => 1,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz4.save(:validate => false)
		profession4.quiz_id = quiz4.id
		profession4.save(:validate => false)
		
		profession5 = Profession.new(:title => "Policeman", :description =>
									"Policeman is a profession!",
									:file_name => "policeman.jpg")
		quiz5 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 1,
						:build => 0, :writing => 0, :speaking => 0, :persuading => 0,
						:taking_initiative => 1, :problem_solving => 0, :helping => 1,
						:physical_activities => 1, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz5.save(:validate => false)
		profession5.quiz_id = quiz5.id
		profession5.save(:validate => false)

		profession6 = Profession.new(:title => "Management Consulting", :description =>
									"Management Consulting is a profession!",
									:file_name => "management_consulting.jpg")
		quiz6 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 1,
						:build => 0, :writing => 1, :speaking => 1, :persuading => 1,
						:taking_initiative => 0, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz6.save(:validate => false)
		profession6.quiz_id = quiz6.id
		profession6.save(:validate => false)

		profession7 = Profession.new(:title => "TV Producer", :description =>
									"TV producer is a profession!",
									:file_name => "tv_producer.jpg")
		quiz7 = Quiz.new(:analyzing => 0, :creating => 1, :team_work => 1,
						:build => 0, :writing => 0, :speaking => 1, :persuading => 1,
						:taking_initiative => 1, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 1, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz7.save(:validate => false)
		profession7.quiz_id = quiz7.id
		profession7.save(:validate => false)
	end
end
