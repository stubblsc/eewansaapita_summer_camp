class AddUserTypeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :userType, :string
  end
end
