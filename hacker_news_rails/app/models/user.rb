class User < ActiveRecord::Base
  attr_accessible :about, :password, :username
  has_many :posts
  has_many :comments
end
