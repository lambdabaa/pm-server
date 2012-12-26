class User < ActiveRecord::Base
  has_many :comments
  has_many :created_tasks, :class_name => 'Task', :foreign_key => 'creator_id'
  has_many :assignments
  has_many :tasks, :through => :assignments


  def assigned_tasks
    return tasks
  end
end
