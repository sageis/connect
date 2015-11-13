class LoadData < ActiveRecord::Migration
  def up
  	#create initial users
  	ba = User.new(:first_name => "Betsy", :last_name => "Alegria", :login => "betsy")
  	ba.save(:validate => false)
  	si = User.new(:first_name =>"Sage", :last_name => "Isabella", :login =>"sage")
  	si.save(:validate => false)
  	jg = User.new(:first_name =>"Jasmine", :last_name => "Guillory", :login => "jasmine")
  	jg.save(:validate => false)
  	cp = User.new(:first_name =>"Cristian", :last_name => "Popescu", :login => "cristian")
  	cp.save(:validate => false)

  	#create initial programs
  	program1 = Program.new(:date_time => "2012-08-30 10:44:23", :photo_file_name => "txt.jpg",
							:description => "Teens Exploring Technology (TXT) encourages inner 
							city teenage Black and Latino males to become catalysts of change 
							in urban communities. Our approach is to use technology as a tool 
							for promoting positive youth development and leadership, and 
							ultimately paving the pathway to higher education and majors and 
							careers in Science, Technology Engineering, Math (STEM).", 
							:due_date => "2015-12-02 14:01:00")
  	# program1.user = si
  	program1.save(:validate => false)

  	#create initial reviews
  	review1 = Review.new(:date_time => "2015-09-02 14:01:00", 
  						 :review => "This program was a life-changing experience!")
  	# review1.user = jg
  	review1.program = program1
  	review1.save(:validate => false)
  	
  	#create initial professions
  	computer_science = Profession.new(:description => "Computer science is a profession.", 
  										:title => "Computer Science")
  	computer_science.save(:validate => false)
  	# ba.profession = computer_science
  end





  def down
  	# Profession.delete_all
  	# User.delete_all
  	# Program.delete_all
  	# Review.delete_all
  end

end
