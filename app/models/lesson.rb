class Lesson < ApplicationRecord
  belongs_to :formation, dependent: :destroy

  has_one_attached :cover_photo
end
