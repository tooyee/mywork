class CreateActiveflows < ActiveRecord::Migration[5.1]
  def change
    create_table :activeflows do |t|
      t.references :transactionflow, foreign_key: true
      t.references :activeunit, foreign_key: true
      t.integer :accouttype
      t.integer :floworderid
      t.integer :flowtype
      t.integer :vouchertemplatetype
      t.integer :contenttype
      t.integer :resourcestype
      t.integer :subtransactiontype
      t.integer :stockaccounttype
      t.integer :copyresourcestype
      t.integer :beforeactiveunit_id

      t.timestamps
    end
  end
end
