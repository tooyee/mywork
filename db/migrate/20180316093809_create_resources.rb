class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :code
      t.string :name
      t.integer :resourcetype

      t.timestamps
    end
  end
end
