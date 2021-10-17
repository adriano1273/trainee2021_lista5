class Language < ApplicationRecord
  belongs_to :teacher
  has_many_attached :docs

  validates :name, :teacher_id, presence: true
  validates :teacher_id, uniqueness: true
end
