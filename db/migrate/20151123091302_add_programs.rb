class AddPrograms < ActiveRecord::Migration
  def up
  	@creator = User.find_by_first_name("Sage")
  	program1 = Program.new(:creator_id => @creator.id, :due_date => 
  							"2016-01-15 11:59:00", :description => "TXT is a program",
  							:photo_file_name => "txt.jpg", :applied => false, 
  							:price => 0, :zipcode => 13579, :state => "CA", 
  							:website_link => "http://exploringtech.org/")
    program1.save(:validate => false)
  end
end
