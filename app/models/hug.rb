class Hug < ApplicationRecord
  belongs_to :user
  has_many :bookings

  enum category: [ :friendly, :accepted, :refused, :canceled ]
end
