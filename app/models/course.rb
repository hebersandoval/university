class Course < ApplicationRecord
    validates :name, presence: true, length: { minimun: 5, maximum: 50 }
    validates :short_name, presence: true, length: { minimun: 2, maximum: 5 }
    validates :description, presence: true

    has_many :student_courses
    has_many :students, through: :student_courses

end