class Subject < ApplicationRecord
    has_many :answers, dependent: :destroy


    validates :subject_name, presence: true
    validates :teacher_name, presence: true
end
