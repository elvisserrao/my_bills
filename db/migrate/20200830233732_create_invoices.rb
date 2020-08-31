class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :name, null: false
      t.integer :category, null: false
      t.integer :value, null: false
      t.date :due_date, null: false
      t.date :payment_date, null: true
      t.references :user, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
