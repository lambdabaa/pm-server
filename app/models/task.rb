class Task < ActiveRecord::Base
  has_many :comments
  has_many :categorizations
  has_many :tags, :through => :categorizations
  has_many :assignments
  has_many :users, :through => :assignments

  belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_id'

  def assignees
    users
  end
end
