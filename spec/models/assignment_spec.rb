
require 'spec_helper'

describe Assignment do
  fixtures :assignments
  fixtures :tasks
  fixtures :users

  context 'when there is an assignment' do
    before(:each) do
      @assignment = assignments(:one)
      @task = tasks(:one)
      @assignee = users(:gareth)
    end

    it 'should be able to get the task and the user' do
      @assignment.task.should == @task
      @assignment.assignee.should == @assignee
    end
  end
end
