class CreateActives < ActiveRecord::Migration[5.1]
  def change
    create_table :actives do |t|
      t.references :activeflow, foreign_key: true
      t.references :resource, foreign_key: true
      t.integer :status
      t.text :remarks

      t.timestamps
    end
  end
end
