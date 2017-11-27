class Farm < ApplicationRecord
  belongs_to :user, optional: true
  has_many :status
  has_many :watering

  def already_user?
    self.user_id != nil
  end
end
