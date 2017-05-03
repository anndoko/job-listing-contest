class Company < ApplicationRecord
  validates :title, presence: true
  
  has_many :jobs
end
