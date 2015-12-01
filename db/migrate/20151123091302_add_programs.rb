class AddPrograms < ActiveRecord::Migration
  def up
  	@creator = User.find_by_first_name("Sage")
  	program1 = Program.new(:creator_id => @creator.id, :due_date => 
  							"2016-01-15 11:59:00", 
                :description => "The program is an immersive experience where" +
                " young men of color develop as technology leaders by learning " +
                "computer programming, entrepreneurship, and public speaking. " + 
                "We use tech and coding as tools that lead to discipline, " + 
                "confidence, and critical thinking.",
  							:photo_file_name => "txt.jpg", :applied => false, 
  							:price => 0, :region => "CA", :date_time => DateTime.now,
  							:website_link => "http://exploringtech.org/",
  							:title => "Teens Exploring Technology",
  							:paid => false, :housed => false, :price => 0)
    program1.save(:validate => false)
  end
end

