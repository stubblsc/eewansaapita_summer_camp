class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.integer :userId
      t.text :essay
      t.integer :year

      t.timestamps
    end
  end
end
