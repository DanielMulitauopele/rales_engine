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
    CSV.foreach('.db/csv/merchants.csv',  headers: true, header_converters: :symbol) do |merchant|
      merchant = Merchant.new(
        id: merchant[:id]
        name: merchant[:name]
        created_at: merchant[:created_at]
        updated_at: merchant[:updated_at]
      )
    end
  end

  def items
    CSV.foreach('.db/csv/items.csv',  headers: true, header_converters: :symbol) do |item|
      item = Item.new(
        id: item[:id]
        name: item[:name]
        description: item[:description]
        unit_price: item[:unit_price]
        merchant_id: item[:merchant_id]
        created_at: item[:created_at]
        updated_at: item[:updated_at]
      )
    end
  end

  def invoices
    CSV.foreach('.db/csv/invoices.csv',  headers: true, header_converters: :symbol) do |invoice|
      invoice = Invoice.new(
        id: invoice[:id]
        customer_id: invoice[:customer_id]
        merchant_id: invoice[:merchant_id]
        status: invoice[:status]
        created_at: invoice[:created_at]
        updated_at: invoice[:updated_at]
      )
    end
  end

  def invoice_items
    CSV.foreach('.db/csv/invoice_items.csv',  headers: true, header_converters: :symbol) do |invoice_item|
      invoice_item = InvoiceItem.new(
        id: invoice_item[:id]
        item_id: invoice_item[:item_id]
        invoice_id: invoice_item[:invoice_id]
        quantity: invoice_item[:quantity]
        unit_price: invoice_item[:unit_price]
        created_at: invoice_item[:created_at]
        updated_at: invoice_item[:updated_at]
      )
    end
  end

  def customers
    CSV.foreach('.db/csv/customers.csv',  headers: true, header_converters: :symbol) do |customer|
      customer = Customer.new(
        id: customer[:id]
        first_name: customer[:first_name]
        last_name: customer[:last_name]
        created_at: customer[:created_at]
        updated_at: customer[:updated_at]
      )
    end
  end

  def transactions
    CSV.foreach('.db/csv/transactions.csv',  headers: true, header_converters: :symbol) do |transaction|
      transaction = Transaction.new(
        id: transaction[:id]
        invoice_id: transaction[:invoice_id]
        credit_card_number: transaction[:credit_card_number]
        credit_card_expiration_date: transaction[:credit_card_expiration_date]
        result: transaction[:result]
        created_at: transaction[:created_at]
        updated_at: transaction[:updated_at]
      )
    end
  end
end
