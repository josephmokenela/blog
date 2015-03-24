class User < ActiveRecord::Base
  validates_presence_of :email, :password
  
  has_one :profile
  has_many :articles -> {order('published_at DESC, title ASC')}, :dependent => :destroy
end
