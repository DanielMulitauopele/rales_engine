class Customer < ApplicationRecord
  validates_presence_of :first_name, :last_name

  has_many :invoices
  has_many :transactions, through: :invoices
  has_many :merchants, through: :invoices

  default_scope { order(id: :asc) }

  def self.favorite_merchant(id)
    Merchant
    .unscoped
    .select("merchants.*, count(invoices.id) AS invoice_count")
    .joins(invoices: :transactions)
    .where(invoices: {customer_id: id}, transactions: {result: 'success'})
    .group(:id)
    .order('invoice_count DESC')
    .limit(1)
    .first
  end
end
