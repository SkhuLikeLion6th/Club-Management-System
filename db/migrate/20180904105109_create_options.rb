class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.integer :club_id
      t.integer :apply_active

      t.timestamps null: false
    end
  end
end
