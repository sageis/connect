class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.string :program_id
		# t.string :user_id
		t.datetime :date_time
		t.text :review
		t.timestamps
    end
  end
end
