class Politician < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :party,  presence: true
end
