class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hug

  enum progress: [:attente, :acceptée, :refusée, :annulée]

  def to_s
    self.progress
  end
end
