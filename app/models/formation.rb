class Formation < ApplicationRecord
  belongs_to :teacher
  has_many :students

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
