class CreateClubMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :club_members do |t|
      t.integer :club_id
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
