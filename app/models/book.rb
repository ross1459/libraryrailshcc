# == Schema Information
#
# Table name: books
#
#  id         :integer         not null, primary key
#  title      :text
#  isbn       :text
#  created_at :datetime
#  updated_at :datetime
#

# app/models/book.rb
class Book < ActiveRecord::Base
end
