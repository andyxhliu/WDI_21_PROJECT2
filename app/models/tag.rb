class Tag < ApplicationRecord 
  has_and_belongs_to_many :events
  has_many :groups, through: :events
end
