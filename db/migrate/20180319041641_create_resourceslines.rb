class CreateResourceslines < ActiveRecord::Migration[5.1]
  def change
    create_table :resourceslines do |t|
      t.references :active, foreign_key: true
      t.references :business, foreign_key: true
      t.references :resource, foreign_key: true
      t.integer :quantity
      t.decimal :price
      t.decimal :cost
      t.integer :vatgroup
      t.integer :whscode
      t.integer :status

      t.timestamps
    end
  end
end
