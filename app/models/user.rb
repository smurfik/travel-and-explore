class User < ActiveRecord::Base
  has_secure_password

  validates :username, :email, presence: true, uniqueness: true
  validates :email, format: { with: /\w@\w/ }
end
