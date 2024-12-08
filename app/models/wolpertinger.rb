class Wolpertinger < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30, minimum: 3 }
  validates :age, presence: true, numericality: { only_integer: true, in: 0..200 }
  validate :wolpertinger_color


  def wolpertinger_color
    errors.add(:color, 'wrong color') unless color.match(/(brown|red|green|pink)/)
  end

end
