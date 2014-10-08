class AddUserIdToYearlyInfos < ActiveRecord::Migration
  def change
    add_column :yearly_infos, :user_id, :integer
  end
end
