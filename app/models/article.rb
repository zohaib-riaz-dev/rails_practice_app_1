class Article < ApplicationRecord
  validates :title, presence: true
  validates :age, presence: true
  validates :body, presence: true, length: { minimum: 4 }
  validate :check_age

  def check_age
    if age.present? && (age <= 0)
      errors.add(:age, "should be a positive number")
    end
  end
end
