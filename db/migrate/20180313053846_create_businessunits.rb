class CreateBusinessunits < ActiveRecord::Migration[5.1]
  def change
    create_table :businessunits do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
