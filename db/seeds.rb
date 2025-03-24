# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data
Car.destroy_all

# Sample electric vehicles data
cars_data = [
  {
    brand: "Tesla",
    name: "Model 3",
    model_year: 2024,
    price: 41990,
    range: 358,
    acceleration: 3.1,
    top_speed: 162,
    power: 324,
    torque: 450,
    battery_capacity: 82,
    charging_time: 30,
    seats: 5,
    cargo_space: 425,
    dimensions: "4694x1933x1443",
    weight: 1825
  },
  {
    brand: "Tesla",
    name: "Model Y",
    model_year: 2024,
    price: 53990,
    range: 330,
    acceleration: 3.5,
    top_speed: 155,
    power: 384,
    torque: 500,
    battery_capacity: 75,
    charging_time: 35,
    seats: 7,
    cargo_space: 2158,
    dimensions: "4751x1921x1624",
    weight: 1997
  },
  {
    brand: "BMW",
    name: "i4",
    model_year: 2024,
    price: 52995,
    range: 301,
    acceleration: 3.9,
    top_speed: 124,
    power: 340,
    torque: 430,
    battery_capacity: 81.5,
    charging_time: 31,
    seats: 5,
    cargo_space: 470,
    dimensions: "4783x1852x1448",
    weight: 2125
  },
  {
    brand: "Porsche",
    name: "Taycan",
    model_year: 2024,
    price: 89990,
    range: 282,
    acceleration: 2.8,
    top_speed: 143,
    power: 522,
    torque: 650,
    battery_capacity: 93.4,
    charging_time: 23,
    seats: 5,
    cargo_space: 491,
    dimensions: "4963x1966x1381",
    weight: 2145
  },
  {
    brand: "Hyundai",
    name: "IONIQ 6",
    model_year: 2024,
    price: 41450,
    range: 321,
    acceleration: 5.1,
    top_speed: 115,
    power: 225,
    torque: 350,
    battery_capacity: 77.4,
    charging_time: 18,
    seats: 5,
    cargo_space: 401,
    dimensions: "4855x1880x1495",
    weight: 2020
  }
]

# Create cars
cars_data.each do |car_data|
  Car.create!(car_data)
end

puts "Created #{Car.count} sample electric vehicles"
