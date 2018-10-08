class Customer < ApplicationRecord
  validates_presence_of :first_name, :last_name
  
  has_many :invoices
  has_many :transactions, through: :invoices
  has_many :merchants, through: :invoices

  default_scope { order(id: :asc) }
  # def self.favorite_merchant(id)
  #   require "pry"; binding.pry
  # end
end
