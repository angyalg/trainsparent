class Question < ApplicationRecord
  has_many :answers

  def answers
    super.shuffle
  end
end
