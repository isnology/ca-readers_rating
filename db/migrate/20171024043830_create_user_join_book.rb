class CreateUserJoinBook < ActiveRecord::Migration[5.1]
  def change
    create_table :user_join_books do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
