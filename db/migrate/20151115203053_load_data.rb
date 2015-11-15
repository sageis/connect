class LoadData < ActiveRecord::Migration
  def up
  	ba = User.new(:first_name => "Betsy", :last_name => "Alegria")
    ba.save(:validate => false)
    si = User.new(:first_name =>"Sage", :last_name => "Isabella")
    si.save(:validate => false)
    jg = User.new(:first_name =>"Jasmine", :last_name => "Guillory")
    jg.save(:validate => false)
    cp = User.new(:first_name =>"Cristian", :last_name => "Popescu")
    cp.save(:validate => false)
  end
end
