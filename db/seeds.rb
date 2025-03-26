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

# Tesla Models
Car.create!(
  brand: "Tesla",
  name: "Model 3",
  model_year: 2024,
  price: 38990,
  range: 358,
  battery_capacity: 82,
  charging_time: 30,
  power: 283,
  torque: 450,
  acceleration: 3.1,
  top_speed: 162,
  dimensions: "4694×1933×1443",
  weight: 1839,
  cargo_space: 425,
  seats: 5
)

Car.create!(
  brand: "Tesla",
  name: "Model S",
  model_year: 2024,
  price: 74990,
  range: 405,
  battery_capacity: 100,
  charging_time: 25,
  power: 670,
  torque: 755,
  acceleration: 2.1,
  top_speed: 155,
  dimensions: "4979×1964×1445",
  weight: 1961,
  cargo_space: 793,
  seats: 5
)

Car.create!(
  brand: "Tesla",
  name: "Model X",
  model_year: 2024,
  price: 79990,
  range: 348,
  battery_capacity: 100,
  charging_time: 30,
  power: 670,
  torque: 755,
  acceleration: 2.6,
  top_speed: 155,
  dimensions: "5037×2070×1684",
  weight: 2359,
  cargo_space: 2387,
  seats: 7
)

# Ford Models
Car.create!(
  brand: "Ford",
  name: "Mustang Mach-E",
  model_year: 2024,
  price: 45995,
  range: 312,
  battery_capacity: 91,
  charging_time: 45,
  power: 346,
  torque: 580,
  acceleration: 3.8,
  top_speed: 130,
  dimensions: "4724×1880×1597",
  weight: 1998,
  cargo_space: 402,
  seats: 5
)

Car.create!(
  brand: "Ford",
  name: "F-150 Lightning",
  model_year: 2024,
  price: 54995,
  range: 320,
  battery_capacity: 131,
  charging_time: 41,
  power: 580,
  torque: 775,
  acceleration: 4.0,
  top_speed: 112,
  dimensions: "5910×2029×1996",
  weight: 2678,
  cargo_space: 400,
  seats: 5
)

# Hyundai/Kia Models
Car.create!(
  brand: "Hyundai",
  name: "IONIQ 5",
  model_year: 2024,
  price: 41450,
  range: 303,
  battery_capacity: 77.4,
  charging_time: 18,
  power: 320,
  torque: 605,
  acceleration: 5.2,
  top_speed: 115,
  dimensions: "4635×1890×1605",
  weight: 2011,
  cargo_space: 531,
  seats: 5
)

Car.create!(
  brand: "Kia",
  name: "EV6",
  model_year: 2024,
  price: 42600,
  range: 310,
  battery_capacity: 77.4,
  charging_time: 18,
  power: 320,
  torque: 605,
  acceleration: 5.2,
  top_speed: 115,
  dimensions: "4685×1890×1550",
  weight: 2011,
  cargo_space: 490,
  seats: 5
)

# BMW Models
Car.create!(
  brand: "BMW",
  name: "i4",
  model_year: 2024,
  price: 52995,
  range: 301,
  battery_capacity: 83.9,
  charging_time: 31,
  power: 340,
  torque: 430,
  acceleration: 5.5,
  top_speed: 124,
  dimensions: "4783×1852×1448",
  weight: 2125,
  cargo_space: 470,
  seats: 5
)

Car.create!(
  brand: "BMW",
  name: "iX",
  model_year: 2024,
  price: 87900,
  range: 324,
  battery_capacity: 111.5,
  charging_time: 35,
  power: 523,
  torque: 765,
  acceleration: 4.6,
  top_speed: 124,
  dimensions: "4953×1967×1695",
  weight: 2447,
  cargo_space: 500,
  seats: 5
)

# Porsche Models
Car.create!(
  brand: "Porsche",
  name: "Taycan",
  model_year: 2024,
  price: 89990,
  range: 282,
  battery_capacity: 93.4,
  charging_time: 22,
  power: 522,
  torque: 650,
  acceleration: 2.8,
  top_speed: 143,
  dimensions: "4963×1966×1395",
  weight: 2145,
  cargo_space: 366,
  seats: 5
)

Car.create!(
  brand: "Porsche",
  name: "Taycan Cross Turismo",
  model_year: 2024,
  price: 99990,
  range: 269,
  battery_capacity: 93.4,
  charging_time: 22,
  power: 522,
  torque: 650,
  acceleration: 2.9,
  top_speed: 143,
  dimensions: "4974×1966×1409",
  weight: 2205,
  cargo_space: 446,
  seats: 5
)

# Rivian Models
Car.create!(
  brand: "Rivian",
  name: "R1S",
  model_year: 2024,
  price: 78000,
  range: 321,
  battery_capacity: 135,
  charging_time: 35,
  power: 835,
  torque: 908,
  acceleration: 3.0,
  top_speed: 125,
  dimensions: "5100×2000×1820",
  weight: 2678,
  cargo_space: 1044,
  seats: 7
)

Car.create!(
  brand: "Rivian",
  name: "R1T",
  model_year: 2024,
  price: 73000,
  range: 321,
  battery_capacity: 135,
  charging_time: 35,
  power: 835,
  torque: 908,
  acceleration: 3.0,
  top_speed: 125,
  dimensions: "5475×2015×1815",
  weight: 2678,
  cargo_space: 835,
  seats: 5
)

# Lucid Models
Car.create!(
  brand: "Lucid",
  name: "Air",
  model_year: 2024,
  price: 87400,
  range: 516,
  battery_capacity: 118,
  charging_time: 20,
  power: 620,
  torque: 885,
  acceleration: 3.1,
  top_speed: 168,
  dimensions: "4973×1900×1410",
  weight: 2233,
  cargo_space: 456,
  seats: 5
)

# Polestar Models
Car.create!(
  brand: "Polestar",
  name: "2",
  model_year: 2024,
  price: 49900,
  range: 294,
  battery_capacity: 78,
  charging_time: 28,
  power: 408,
  torque: 660,
  acceleration: 4.5,
  top_speed: 127,
  dimensions: "4606×1859×1479",
  weight: 1739,
  cargo_space: 405,
  seats: 5
)

# Mercedes-Benz Models
Car.create!(
  brand: "Mercedes-Benz",
  name: "EQS",
  model_year: 2024,
  price: 104400,
  range: 350,
  battery_capacity: 107.8,
  charging_time: 31,
  power: 523,
  torque: 855,
  acceleration: 4.1,
  top_speed: 130,
  dimensions: "5216×1926×1512",
  weight: 2480,
  cargo_space: 610,
  seats: 5
)

Car.create!(
  brand: "Mercedes-Benz",
  name: "EQE",
  model_year: 2024,
  price: 74900,
  range: 305,
  battery_capacity: 90.6,
  charging_time: 31,
  power: 288,
  torque: 530,
  acceleration: 5.1,
  top_speed: 130,
  dimensions: "4946×1906×1512",
  weight: 2355,
  cargo_space: 430,
  seats: 5
)

puts "Created #{Car.count} sample electric vehicles"
