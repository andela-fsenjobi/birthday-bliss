class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.text :bio
      t.string :phone
      t.references :user, foreign_key: true
      t.string :city

      t.timestamps
    end
    add_index :profiles, :username, unique: true
    add_index :profiles, :email, unique: true
  end
end
