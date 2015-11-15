class CreateProfessions < ActiveRecord::Migration
	def change
		create_table :professions do |t|
			t.text :description
		    t.string :title
		    t.string :file_name
		    t.timestamps null: false
		  	t.timestamps null: false
		end
	end
end
