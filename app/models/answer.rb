class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :answerer, class_name: "User"
  has_many :comments
end
