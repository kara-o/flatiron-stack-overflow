class User < ApplicationRecord
  has_many :questions, foreign_key: :asker_id

  has_many :answers, through: :questions, source: :asker
  has_many :answers, foreign_key: :answerer_id

  has_many :comments, through: :answers
  has_many :comments, through: :questions
end
