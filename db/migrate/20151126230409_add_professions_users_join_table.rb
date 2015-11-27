class AddProfessionsUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :professions_users, :id => false do |t|
      t.integer :profession_id
      t.integer :user_id
    end

    add_index :professions_users, :profession_id
    add_index :professions_users, :user_id
  end
 
  def self.down
    drop_table :professions_users
  end
end
