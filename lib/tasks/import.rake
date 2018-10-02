namespace :import do
  desc "Imports seed data from csv files"
  task data: :environment do
    require 'csv'

    Merchant.destroy_all
    Item.destroy_all
    Invoice.destroy_all
    InvoiceItem.destroy_all
    Customer.destroy_all
    Transaction.destroy_all

    merchants
    items
    invoices
    invoice_items
    customers
    transactions
  end

  private

  def merchants

  end

  def items

  end

  def invoices

  end

  def invoice_items

  end

  def customers

  end

  def transactions

  end
end
