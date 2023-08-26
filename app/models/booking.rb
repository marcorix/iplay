class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  def pending?
    status == 'pending'
  end
end
