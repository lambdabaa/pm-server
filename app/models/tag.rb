class Tag < ActiveRecord::Base
  has_many :categorizations
  has_many :tasks, :through => :categorizations
end
