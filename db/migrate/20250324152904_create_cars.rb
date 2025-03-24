class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.integer :model_year
      t.decimal :price
      t.integer :range
      t.decimal :battery_capacity
      t.integer :charging_time
      t.integer :power
      t.integer :torque
      t.decimal :acceleration
      t.integer :top_speed
      t.decimal :weight
      t.string :dimensions
      t.integer :seats
      t.decimal :cargo_space

      t.timestamps
    end
  end
end
