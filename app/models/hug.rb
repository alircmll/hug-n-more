class Hug < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  enum category: {friendly: 0, tiny: 1, fast: 2, more: 3}
end
