class Title < ApplicationRecord
  belongs_to :event
  has_many :activities
end
