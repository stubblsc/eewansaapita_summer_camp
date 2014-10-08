class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :userId
      t.string :firstName
      t.string :midInitial
      t.string :lastName
      t.date :dateOfBirth
      t.integer :enrollNum
      t.string :gender
      t.string :email
      t.string :streetAddr
      t.string :cityAddr
      t.string :stateAddr
      t.integer :zipAddr
      t.string :guard1Name
      t.string :guard2Name
      t.string :guardEmail
      t.string :homePhone
      t.string :cellPhone

      t.timestamps
    end
  end
end
