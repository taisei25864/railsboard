class Subject < ApplicationRecord
    validates :subject_name, presence: true
    validates :teacher_name, presence: true
end
