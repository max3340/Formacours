class Formation < ApplicationRecord
  belongs_to :teacher
  has_many :students
  has_many :lessons, dependent: :destroy

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
