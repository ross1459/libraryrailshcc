# == Schema Information
#
# Table name: users
#
#  id       :integer         not null, primary key
#  name     :text
#  username :text
#  password :text
#  enc_pass :text
#  salt     :text
#

# app/models/user.rb
class User < ActiveRecord::Base
end
