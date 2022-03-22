class Answer < ApplicationRecord
  belongs_to :subject

  validates :content, presence: true
end
