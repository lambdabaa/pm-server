
require 'spec_helper'

describe User do
  fixtures :assignments
  fixtures :tasks
  fixtures :users

  context 'when there is an assigned task' do
    before(:each) do
      @assignment = assignments(:one)
      @task = tasks(:one)
      @creator = users(:alison)
      @assignee = users(:gareth)
    end

    it 'should be accessible to creator via created_tasks' do
      @creator.created_tasks.include?(@task).should be_true
    end

    it 'should be accessible to assignee via assigned_tasks' do
      @assignee.assigned_tasks.include?(@task).should be_true
    end
  end
end
