class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :code
      t.string :name
      t.references :businessflow, foreign_key: true
      t.integer :status
      t.text :remarks

      t.timestamps
    end
  end
end
