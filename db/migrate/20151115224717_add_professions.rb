class AddProfessions < ActiveRecord::Migration
	def up
		profession1 = Profession.new(:title => "Computer Scientist", :description =>
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

		profession2 = Profession.new(:title => "Public Speaker", :description =>
									"Public Speaking is a profession!",
									:file_name => "public_speaker.jpg")
		quiz2 = Quiz.new(:analyzing => 0, :creating => 0, :team_work => 0,
						:build => 0, :writing => 0, :speaking => 1, :persuading => 1,
						:taking_initiative => 1, :problem_solving => 0, :helping => 0,
						:physical_activities => 0, :organizing => 0, :investigating => 0,
						:growth => 1, :money => 0, :security => 0)
		quiz2.save(:validate => false)
		profession2.quiz_id = quiz2.id
		profession2.save(:validate => false)
	end
end


# t.text :description
# t.string :title
# t.string :file_name
# t.integer :quiz_id
# t.timestamps null: false
# t.timestamps null: false
