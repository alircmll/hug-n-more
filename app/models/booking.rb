class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hug

  enum progress: [:pending, :accepted, :refused, :canceled]

  def to_s
    self.progress
  end
end
