class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.integer :zip
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
