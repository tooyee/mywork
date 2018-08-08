class CreateBusinessflows < ActiveRecord::Migration[5.1]
  def change
    create_table :businessflows do |t|
      t.references :businessunit, foreign_key: true
      t.string :code
      t.string :name
      t.text :remarks

      t.timestamps
    end
  end
end
