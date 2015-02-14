class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.text :bio
      t.date :birthday
      t.string :twitter
      t.string :url

      t.timestamps null: false
    end
  end
end
