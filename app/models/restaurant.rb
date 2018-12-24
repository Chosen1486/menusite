class Restaurant < ApplicationRecord
  validates_presence_of :name
  belongs_to :category
  has_many_attached :menu_uploads

  scope :category, -> (category_id) { where category_id: category_id }
  scope :district, -> (district) { where district: district }
end
