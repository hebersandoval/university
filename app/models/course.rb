class Course < ApplicationRecord
    validates :name, presence: true, length: { minimun: 5, maximum: 50 }
    validates :short_name, presence: true, length: { minimun: 2, maximum: 5 }
    validates :description, presence: true

end