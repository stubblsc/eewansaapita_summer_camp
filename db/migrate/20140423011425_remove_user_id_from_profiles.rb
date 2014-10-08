class RemoveUserIdFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :userId, :integer
  end
end
