class Destination < ActiveRecord::Base
  belongs_to :user

  validates :city, :country, :currency, :language, :image_url, presence: true
  validates :city, uniqueness: { scope: :country }
end
