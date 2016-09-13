class Destination < ActiveRecord::Base
  belongs_to :user
  has_many :insights

  validates :city, :country, :currency, :language, :image_url, presence: true
  validates :city, uniqueness: { scope: :country }

  def display_name
    "#{city.titleize}, #{country.titleize}"
  end
end
