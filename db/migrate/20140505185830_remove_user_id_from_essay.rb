class RemoveUserIdFromEssay < ActiveRecord::Migration
  def change
    remove_column :essays, :userId, :integer
  end
end
