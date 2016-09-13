class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.string :currency
      t.string :language
      t.string :image_url

      t.timestamps null: false
    end
  end
end
