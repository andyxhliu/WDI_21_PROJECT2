class Event < ApplicationRecord 
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "events_users" 
  belongs_to :group
  has_many :comments
  has_many :activities
  has_many :titles
  has_many :galleries
  has_and_belongs_to_many :tags
  mount_uploader :event_image, EventImageUploader

  acts_as_votable
end
