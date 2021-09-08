class Course < ApplicationRecord

    belongs_to :student

    validates :courseName, :creditHours, :courseTeacher, presence: true




end
