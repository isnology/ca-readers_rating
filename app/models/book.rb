# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_data  :string
#  rating      :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  has_many :user_join_books
  has_many :users, through: :user_join_books
  has_many :reviews
end
