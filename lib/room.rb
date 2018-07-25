class Room < ActiveRecord::Base
  has_and_belongs_to_many :exits

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true

end
