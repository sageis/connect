class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.column :first_name, :string
		  t.column :last_name, :string
		  t.column :login, :string
		
    	t.timestamps null: false
    end

   #  User.each do |one_user|
  	# 	one_user.login = (one_user.last_name).downcase
  	# 	one_user.save
  	# end
  end
end
