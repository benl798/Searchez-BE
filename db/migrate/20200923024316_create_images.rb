class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :unsplash_id
      t.text :url
      t.text :alt_description
      t.text :description
      t.float :latitude
      t.float :longitude
      t.text :location_name

      t.timestamps
    end
  end
end
