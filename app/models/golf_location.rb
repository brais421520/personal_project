class GolfLocation < ApplicationRecord
  has_and_belongs_to_many :golf_scores
end