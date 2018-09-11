class Brush < ApplicationRecord
  validates :sku, :name, presence: true
  validates :sku, uniqueness: true
end
