class DiveLeader < ApplicationRecord
  has_and_belongs_to_many :dives
end