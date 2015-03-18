class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true },
                             numericality: { greater_than_or_equal_to: 0 }
  validate :mens_apparel_or_womens_apparel

  private 

  def mens_apparel_or_womens_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, "Either mens_apparel of womens_apparel must be true")
      errors.add(:womens_apparel, "Either mens_apparel of womens_apparel must true")
    end
  end
end
