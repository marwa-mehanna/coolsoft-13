class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :action_notifications
  has_many :ideas
  has_many :comments
  has_many :user_ratings
  has_and_belongs_to_many :notifications
  has_and_belongs_to_many :comments, :join_table => :likes
  has_and_belongs_to_many :ideas, :join_table => :votes

end
