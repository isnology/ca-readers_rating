# == Schema Information
#
# Table name: user_join_books
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserJoinBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
