class CreateYearlyInfos < ActiveRecord::Migration
  def change
    create_table :yearly_infos do |t|
      t.integer :userId
      t.text :essay
      t.text :comments
      t.integer :year
      t.string :role

      t.timestamps
    end
  end
end
