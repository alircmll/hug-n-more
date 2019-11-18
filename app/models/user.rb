class User < ApplicationRecord
  has_many :hugs
  has_many :bookings
end
