class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :ticket_type
      t.float :price
      t.integer :quantity
      t.references :event, null: false, foreign_key: true
      t.references :purchaser, null: false, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
