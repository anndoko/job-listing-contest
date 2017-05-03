class Company < ApplicationRecord

  mount_uploader :image, ImageUploader
  validates :title, presence: true

  has_many :jobs
end
