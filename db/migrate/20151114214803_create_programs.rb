class CreatePrograms < ActiveRecord::Migration
	def change
		create_table :programs do |t|
			t.string :creator_id
			t.datetime :date_time
			t.datetime :due_date
			t.string :description
			t.string :photo_file_name
			t.boolean :applied
        	t.integer :price
        	t.boolean :housed
        	t.boolean :paid
        	t.string :region
        	t.string :title
        	t.string :website_link
			t.timestamps
		end
	end
end
