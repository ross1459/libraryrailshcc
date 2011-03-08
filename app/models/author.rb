# == Schema Information
#
# Table name: authors
#
#  id         :integer         not null, primary key
#  first_name :text
#  last_name  :text
#  email      :text
#

# app/models/author.rb
class Author < ActiveRecord::Base
end
