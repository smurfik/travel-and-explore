class User < ActiveRecord::Base
  has_secure_password

  validates :username, :email, presence: true, uniqueness: true
  validates :email, format: { with: /\w@\w/ }

  has_many :destinations
  has_many :insights
end
