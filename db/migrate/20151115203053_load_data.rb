class LoadData < ActiveRecord::Migration
  def up
  	ba = User.new(:first_name => "Betsy", :last_name => "Alegria", :login => "betsy",
                  :photo_filename => "betsy.jpg", :first_time => 0, :quiz_taken => false)
    ba.save(:validate => false)
    si = User.new(:first_name =>"Sage", :last_name => "Isabella", :login => "sage",
                  :photo_filename => "sage.jpg", :first_time => 0, :quiz_taken => false)
    si.save(:validate => false)
    jg = User.new(:first_name =>"Jasmine", :last_name => "Guillory", :login => "jasmine",
                  :photo_filename => "jasmine.jpg", :first_time => 0, :quiz_taken => false)
    jg.save(:validate => false)
    cp = User.new(:first_name =>"Cristian", :last_name => "Popescu", :login => "cristian",
                  :photo_filename => "cristian.jpg", :first_time => 0, :quiz_taken => false)
    cp.save(:validate => false)
  end
end
