class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :content
      t.integer :club_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
