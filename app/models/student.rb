class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :formation
  has_one_attached :avatar

  validates :first_name, presence: true
    validates :last_name, presence: true
    validates :avatar, presence: true
end
