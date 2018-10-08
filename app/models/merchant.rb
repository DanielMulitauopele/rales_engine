class Merchant < ApplicationRecord
  validates_presence_of :name

  has_many :invoices
  has_many :items
  has_many :invoice_items, through: :invoices

  def self.most_revenue
    require "pry"; binding.pry
  end
end
