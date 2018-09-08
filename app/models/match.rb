class Match < ApplicationRecord
  belongs_to :event, optional: true
  has_many :games
end
