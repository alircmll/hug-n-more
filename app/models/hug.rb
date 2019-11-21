class Hug < ApplicationRecord
  include AlgoliaSearch

  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  enum category: {friendly: 0, tiny: 1, fast: 2, more: 3}
  #enum category: [:friendly, :tiny, :fast, :more]

  algoliasearch do
    attributes :title, :category, :description    
  end
end
