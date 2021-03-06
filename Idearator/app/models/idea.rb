class Idea < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  has_many :comments
  has_many :action_notifications
  has_many :ratings
  has_and_belongs_to_many :committees
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :users, :join_table => :votes
end
