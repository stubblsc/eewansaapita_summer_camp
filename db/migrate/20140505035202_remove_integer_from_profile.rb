class RemoveIntegerFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :integer, :string
  end
end
