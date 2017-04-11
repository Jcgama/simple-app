class CreateFavoriteLists < ActiveRecord::Migration
  def change
    create_table :favorite_lists do |t|
      t.integer :list_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
