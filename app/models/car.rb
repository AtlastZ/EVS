class Car < ApplicationRecord
  # Active Storage
  has_one_attached :image

  # Validations
  validates :name, presence: true
  validates :brand, presence: true
  validates :model_year, presence: true, numericality: { only_integer: true, greater_than: 1900, less_than_or_equal_to: Time.current.year + 1 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :range, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :battery_capacity, presence: true, numericality: { greater_than: 0 }
  validates :charging_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :power, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :torque, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :acceleration, presence: true, numericality: { greater_than: 0 }
  validates :top_speed, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :weight, presence: true, numericality: { greater_than: 0 }
  validates :seats, presence: true, numericality: { only_integer: true, greater_than: 0 }

  # Scopes for filtering
  scope :by_brand, ->(brand) { where(brand: brand) }
  scope :by_price_range, ->(min, max) { where(price: min..max) }
  scope :by_range, ->(min_range) { where('range >= ?', min_range) }
  scope :by_year, ->(year) { where(model_year: year) }
  scope :recent, -> { order(model_year: :desc) }

  # Instance methods
  def full_name
    "#{brand} #{name} #{model_year}"
  end

  def price_formatted
    ActionController::Base.helpers.number_to_currency(price)
  end

  def range_with_unit
    "#{range} km"
  end

  def battery_capacity_with_unit
    "#{battery_capacity} kWh"
  end

  def power_with_unit
    "#{power} kW"
  end

  def torque_with_unit
    "#{torque} Nm"
  end

  def acceleration_with_unit
    "#{acceleration} s (0-100 km/h)"
  end

  def top_speed_with_unit
    "#{top_speed} km/h"
  end

  def weight_with_unit
    "#{weight} kg"
  end
end
