class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.string :description
      t.integer :temperature
      t.references :location

      t.timestamps
    end
  end
end
