class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco), message: "categoría no es un valor válido" }
  validates :value, numericality: {less_than: 40}
  validates :discount, numericality: true
end
