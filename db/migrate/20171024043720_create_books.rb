class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :image_data
      t.float :rating

      t.timestamps
    end
  end
end
