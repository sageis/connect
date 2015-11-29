class CreateProgramsUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :programs_users, :id => false do |t|
      t.integer :program_id
      t.integer :user_id
    end

    add_index :programs_users, :program_id
    add_index :programs_users, :user_id
  end
 
  def self.down
    drop_table :programs_users
  end
end
