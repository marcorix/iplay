class User < ApplicationRecord
  has_many :bookings
  has_many :instruments
  has_many :bookings_as_owner, through: :instruments, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
