class AddBaseidToResourceslines < ActiveRecord::Migration[5.1]
  def change
    add_column :resourceslines, :baseid, :integer
  end
end
