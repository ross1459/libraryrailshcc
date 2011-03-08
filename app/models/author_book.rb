# == Schema Information
#
# Table name: author_book_view
#
#  authid     :integer
#  first_name :text
#  last_name  :text
#  email      :text
#  bookid     :integer
#  title      :text
#  isbn       :text
#  created_at :datetime
#  updated_at :datetime
#

# app/models/author_book.rb
class AuthorBook < ActiveRecord::Base
set_table_name "author_book_view"
end
