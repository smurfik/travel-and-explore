class Insight < ActiveRecord::Base
  belongs_to :user
  belongs_to :destination

  validates :body, :user_id, :destination_id, presence: true
end
