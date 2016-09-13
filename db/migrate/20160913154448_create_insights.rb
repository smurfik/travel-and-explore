class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
      t.integer :user_id
      t.integer :destination_id
      t.string :body

      t.timestamps null: false
    end
    add_index :insights, :user_id
    add_index :insights, :destination_id
  end
end
