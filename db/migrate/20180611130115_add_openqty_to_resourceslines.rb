class AddOpenqtyToResourceslines < ActiveRecord::Migration[5.1]
  def change
    add_column :resourceslines, :openqty, :integer
  end
end
