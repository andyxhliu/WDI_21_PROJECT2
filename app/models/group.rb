class Group < ApplicationRecord 
  has_and_belongs_to_many :users
  has_many :events
  has_many :comments

  mount_uploader :group_image, GroupImageUploader

  acts_as_votable
end

