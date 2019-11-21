class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include AlgoliaSearch

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :hugs, dependent: :destroy
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  
  algoliasearch do
    attributes :username, :address, :email
  end
end
