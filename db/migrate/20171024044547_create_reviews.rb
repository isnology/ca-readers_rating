class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :book, foreign_key: true
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end