class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
    	t.string :created_by
    	t.datetime :date_time
    	t.string :due_date
    	t.string :description
    	t.string :photo_file_name
    	t.timestamps
    end
  end
end
