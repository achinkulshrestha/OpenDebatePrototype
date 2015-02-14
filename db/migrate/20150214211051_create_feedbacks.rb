class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :debate_id
      t.integer :rator_id
      t.integer :rated_id
      t.integer :explain
      t.integer :listen
      t.integer :interest
      t.text :comments

      t.timestamps null: false
    end
  end
end
