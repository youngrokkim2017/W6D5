class Cat < ApplicationRecord
  COLORS = ["Black", "Blue", "White", "Multi"]
  validates :name, :sex, :color, :birth_date, :description, presence: true
  validates :color, inclusion: { in: COLORS }
  validates :sex, inclusion: { in: ["M", "F"] }

  has_many :rental_requests,
    foreign_key: :cat_id,
    class_name: 'CatRentalRequest',
    dependent: :destroy

  def age
    ((Time.zone.now - birth_date.to_time) / 1.year.seconds).floor
  end
end