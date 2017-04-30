class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}

  has_many :resumes
  has_many :star_relationships
  has_many :followers, through: :star_relationships, source: :user

  #for map
  geocoded_by :address
  after_validation :geocode

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  scope :published, -> {  where(is_hidden: false) }
  scope :recent, -> {  order('created_at DESC') }
  scope :company, -> { order('company') }
  scope :category, -> { order('category')}
end
