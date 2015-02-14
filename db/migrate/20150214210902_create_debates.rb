class CreateDebates < ActiveRecord::Migration
  def change
    create_table :debates do |t|
      t.datetime :date
      t.integer :length
      t.string :topic
      t.boolean :completed
      t.integer :initiator_id
      t.integer :joiner_id

      t.timestamps null: false
    end
  end
end
