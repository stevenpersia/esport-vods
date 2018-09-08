class Event < ApplicationRecord
  belongs_to :category, optional: true
  has_many :matches
end
