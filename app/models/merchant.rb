class Merchant < ApplicationRecord
  validates_presence_of :name

  has_many :invoices
  has_many :items
  has_many :invoice_items, through: :invoices

  default_scope { order(id: :asc) }

  def self.most_revenue_ranked(quantity = 5)
    unscoped
    .select('merchants.*, sum(invoice_items.quantity * invoice_items.unit_price) AS revenue')
    .joins(invoices: [:invoice_items, :transactions])
    .where("transactions.result = 'success'")
    .group(:id)
    .order('revenue DESC')
    .limit(quantity)
  end
end
