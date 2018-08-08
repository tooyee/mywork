class CreateTransactionflows < ActiveRecord::Migration[5.1]
  def change
    create_table :transactionflows do |t|
      t.references :businessflow, foreign_key: true
      t.references :transactionunit, foreign_key: true
      t.integer :transactiontype
      t.integer :floworderid
      t.integer :flowtype

      t.timestamps
    end
  end
end
