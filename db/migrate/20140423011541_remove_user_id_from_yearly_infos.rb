class RemoveUserIdFromYearlyInfos < ActiveRecord::Migration
  def change
    remove_column :yearly_infos, :userId, :integer
  end
end
