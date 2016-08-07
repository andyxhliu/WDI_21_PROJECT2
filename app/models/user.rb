class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  mount_uploader :profile_image, ProfileImageUploader

  has_many :created_events, class_name: "Event", foreign_key: "user_id"
  has_and_belongs_to_many :events_attending, class_name: "Event", join_table: "events_users"
  
end
