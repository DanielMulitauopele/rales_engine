class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :invoice, foreign_key: true
      t.bigint :credit_card_number
      t.datetime :credit_card_expiration_date
      t.text :result

      t.timestamps
    end
  end
end
