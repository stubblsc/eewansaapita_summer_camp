class RemoveUserTypeFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :userType, :integer
  end
end
