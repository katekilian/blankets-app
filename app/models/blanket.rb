class Blanket < ActiveRecord::Base

  validates :name, presence: true
  validates :color, presence: true
  validates :fabric, presence: true
  validates :weight, presence: true

end
