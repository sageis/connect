class CreatePrograms < ActiveRecord::Migration
	def change
		create_table :programs do |t|
			t.string :created_by
			t.datetime :date_time
			t.datetime :due_date
			t.string :description
			t.string :photo_file_name
			t.boolean :applied
        	t.integer :price
       		t.integer :zipcode
        	t.string :state
        	t.string :website_link
			t.timestamps
		end
	end
end
