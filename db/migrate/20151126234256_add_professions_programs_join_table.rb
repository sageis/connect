class AddProfessionsProgramsJoinTable < ActiveRecord::Migration
  def change
    create_table :professions_programs, :id => false do |t|
      t.integer :profession_id
      t.integer :program_id
    end

    add_index :professions_programs, :profession_id
    add_index :professions_programs, :program_id
  end
 
  def self.down
    drop_table :professions_programs
  end
end
