class GolfScore < ApplicationRecord
  has_and_belongs_to_many :golf_locations

  validates :date, presence: true
  validates :golf_locations, presence: true
end
