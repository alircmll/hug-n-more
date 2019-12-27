class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :hugs, dependent: :destroy
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
