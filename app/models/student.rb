class Student < ApplicationRecord
  belongs_to :teacher
  has_one_attached :profile_pic


  validates :name, :registration, :email, :birth, presence: true
  validates :registration, uniqueness: true
  validates_length_of :registration, is: 9
  validates_date :birth, on_or_before: lambda {Date.current}

end
