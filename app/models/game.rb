class Game < ApplicationRecord
  belongs_to :match, optional: true
end
