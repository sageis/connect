class AddProfessions < ActiveRecord::Migration
	def up
		#beginning of one profession
		profession1 = Profession.new(:title => "Software Engineer", :description =>
									" A software engineer is someone who designs," + 
									" develops, tests, and maintains the software and" + 
									" systems that make computers and other technologies" + 
									" work. Software engineers are also called software" + 
									" developers, coders, and computer programmers.",
									:file_name => "computer_science.jpg")
		quiz1 = Quiz.new(:analyzing => 1, :creating => 1, :team_work => 1,
						:build => 1, :writing => 0, :speaking => 0, :persuading => 0,
						:taking_initiative => 0, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 0,
						:growth => 1, :money => 1, :security => 0)
		quiz1.save(:validate => false)
		profession1.quiz_id = quiz1.id
		profession1.save(:validate => false)
		#end of one profession

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
									"Real estate agents help rent, buy, and/or sell" + 
									" property for clients. They study property listings," +
									" interview clients, visit property sites with" +
									" clients, and discuss strategies to either sell/buy" + 
									" property. ",
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
									"A professor provides their students with high" +
									" quality teaching and helps develop their skills" +
									" and thinking. Some professors also conduct" +
									" research while teaching and usually work closely" +
									" with students from all ages. The type of" +
									" college in which the professor resides affects" +
									" their responsibilities.",
									:file_name => "professor.jpg")
		quiz4 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 0,
						:build => 0, :writing => 1, :speaking => 1, :persuading => 0,
						:taking_initiative => 1, :problem_solving => 0, :helping => 1,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz4.save(:validate => false)
		profession4.quiz_id = quiz4.id
		profession4.save(:validate => false)
		
		profession5 = Profession.new(:title => "Police Officer", :description =>
									"A police officer works with a community by" +
									" protecting members of the public and their" +
									" property, prevent crime, reduce the fear of" +
									" crime, and improve the quality of life for" +
									" people in the community. Police officers use" +
									" technology to protect individuals, identify" +
									" the perpetrators of crime, and ensure successful" +
									" prosecutions against those who break the law.",
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
									"Management consultants help organizations" +
									" improve their performance. They study the" +
									" analysis of existing organizations and the" +
									" problems they face and how they plan to" +
									" improve upon those problems.",
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
									"Television producers play an integral role in" +
									" television, film, and video industries. A" +
									" producer oversees each project from the" +
									" beginning to the very end, and may be" +
									" involved in the marketing and distribution" +
									" processes. Producers are also in charge of" +
									" arranging funding for the project.",
									:file_name => "tv_producer.jpg")
		quiz7 = Quiz.new(:analyzing => 0, :creating => 1, :team_work => 1,
						:build => 0, :writing => 0, :speaking => 1, :persuading => 1,
						:taking_initiative => 1, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 1, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz7.save(:validate => false)
		profession7.quiz_id = quiz7.id
		profession7.save(:validate => false)

		profession8 = Profession.new(:title => "Physician", :description =>								  
									"A physician is a professional who practices" +
									" medicine, which is concerned with promoting," +
									" maintaining or restoring human health" +
									" through the study, diagnosis, and treatment" +
									" of disease, injury, and other physical and" +
									" mental impairments.",
									:file_name => "physician.jpg")
		quiz8 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 1,
						:build => 0, :writing => 0, :speaking => 1, :persuading => 1,
						:taking_initiative => 1, :problem_solving => 1, :helping => 1,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 1, :security => 0)
		quiz8.save(:validate => false)
		profession8.quiz_id = quiz8.id
		profession8.save(:validate => false)

		profession9 = Profession.new(:title => "Accountant", :description =>  
									"An accountant maintains and audits records" +
									" and preparing financial reports for a business.",
									:file_name => "accountant.jpg")
		quiz9 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 0,
						:build => 0, :writing => 1, :speaking => 0, :persuading => 0,
						:taking_initiative => 0, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 0, :money => 0, :security => 0)
		quiz9.save(:validate => false)
		profession9.quiz_id = quiz9.id
		profession9.save(:validate => false)

		profession10 = Profession.new(:title => "Architect", :description =>
									"An architect is a person who plans," +
									" designs, and oversees the construction of" +
									" buildings.",
									:file_name => "architect.jpg")
		quiz10 = Quiz.new(:analyzing => 1, :creating => 1, :team_work => 0,
						:build => 1, :writing => 1, :speaking => 1, :persuading => 0,
						:taking_initiative => 0, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 1, :security => 0)
		quiz10.save(:validate => false)
		profession10.quiz_id = quiz10.id
		profession10.save(:validate => false)


		profession11 = Profession.new(:title => "Judge", :description =>		  
									"A judge is a public official authorized to" +
									" decide questions bought before a court of" +
									" justice.",
									:file_name => "judge.jpg")
		quiz11 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 0,
						:build => 0, :writing => 1, :speaking => 1, :persuading => 0,
						:taking_initiative => 0, :problem_solving => 1, :helping => 1,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 1, :security => 0)
		quiz11.save(:validate => false)
		profession11.quiz_id = quiz11.id
		profession11.save(:validate => false)
 
		profession12 = Profession.new(:title => "Scientist", :description =>
									"A scientist is a person who studies, specializes" +
									" in,  or investigates a field of science and" +
									" does scientific work.",
									:file_name => "scientist.jpg")
		quiz12 = Quiz.new(:analyzing => 1, :creating => 1, :team_work => 0,
						:build => 1, :writing => 1, :speaking => 0, :persuading => 0,
						:taking_initiative => 1, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 1,
						:growth => 1, :money => 0, :security => 0)
		quiz12.save(:validate => false)
		profession12.quiz_id = quiz12.id
		profession12.save(:validate => false)

		profession13 = Profession.new(:title => "Pilot", :description =>				  
									"A pilot is a person who actively and directly" +
									" operates the directional flight controls" +
									" of an aircraft while it is in flight.",
									:file_name => "pilot.jpg")
		quiz13 = Quiz.new(:analyzing => 1, :creating => 0, :team_work => 1,
						:build => 0, :writing => 0, :speaking => 1, :persuading => 0,
						:taking_initiative => 1, :problem_solving => 1, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 0,
						:growth => 0, :money => 1, :security => 0)
		quiz13.save(:validate => false)
		profession13.quiz_id = quiz13.id
		profession13.save(:validate => false)
		 
	    profession14 = Profession.new(:title => "Musician", :description =>
									"A musician person who plays a musical instrument" +
									" or is musically talented. Anyone who composes," +
									" conducts, or performs music may also be referred to" +
									" as a musician.",
									:file_name => "musician.jpg")
		quiz14 = Quiz.new(:analyzing => 0, :creating => 1, :team_work => 1,
						:build => 0, :writing => 0, :speaking => 0, :persuading => 0,
						:taking_initiative => 0, :problem_solving => 0, :helping => 0,
						:physical_activities => 1, :organizing => 0, :investigating => 0,
						:growth => 1, :money => 0, :security => 0)
		quiz14.save(:validate => false)
		profession14.quiz_id = quiz14.id
		profession14.save(:validate => false)
	end
end
