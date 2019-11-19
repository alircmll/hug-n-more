class Hug < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  enum category: [ :friendly, :tiny, :fast, :more ]
end
