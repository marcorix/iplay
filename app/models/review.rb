class Review < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :comment, presence: true
end
