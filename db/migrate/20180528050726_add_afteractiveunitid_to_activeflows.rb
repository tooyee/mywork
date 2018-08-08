class AddAfteractiveunitidToActiveflows < ActiveRecord::Migration[5.1]
  def change
    add_column :activeflows, :afteractiveunit_id, :integer
  end
end
