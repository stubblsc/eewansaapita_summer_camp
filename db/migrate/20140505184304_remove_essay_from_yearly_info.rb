class RemoveEssayFromYearlyInfo < ActiveRecord::Migration
  def change
    remove_column :yearly_infos, :essay, :text
  end
end
