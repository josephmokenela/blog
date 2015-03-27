class User < ActiveRecord::Base
  validates_presence_of :email, :password
  
  has_one :profiles
  #has_many :articles, -> {order('published_at DESC, title ASC')}, :dependent => destroy
  
  #has_many :replies, :through => :articles, :source => :comments
end
