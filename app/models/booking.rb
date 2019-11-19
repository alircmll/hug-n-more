class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hug

  enum progress: [:pending, :accepted, :refused, :canceled]
end
