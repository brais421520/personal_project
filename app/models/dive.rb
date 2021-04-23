class Dive < ApplicationRecord
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :dive_leaders

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :start_pressure, presence: true
  validates :end_pressure, presence: true
  validates :max_depth, presence: true
  validates :locations, presence: true, length: {maximum: 50}
  validates :countries, presence: true, length: {maximum: 50}
  validates :dive_leaders, presence: true, length: {maximum: 50}
end
