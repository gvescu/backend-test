class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.boolean :starred
      t.string :image_url

      t.timestamps null: false
    end
  end
end
