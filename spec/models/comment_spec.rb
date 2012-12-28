
require 'spec_helper'

describe Comment do
  fixtures :comments
  fixtures :tasks
  fixtures :users

  context 'when a comment is made on a task' do
    before(:each) do
      @comment = comments(:one)
      @task = tasks(:one)
      @user = users(:gareth)
    end

    it 'should be able to get the user and task' do
      @comment.user.should == @user
      @comment.task.should == @task
    end
  end
end
