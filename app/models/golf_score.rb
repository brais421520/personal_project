class GolfScore < ApplicationRecord
  has_and_belongs_to_many :golf_locations

end
