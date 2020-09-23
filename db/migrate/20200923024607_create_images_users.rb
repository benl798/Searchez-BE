class CreateImagesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :images_users do |t|
      t.integer :user_id
      t.integer :image_id
    end
  end
end
