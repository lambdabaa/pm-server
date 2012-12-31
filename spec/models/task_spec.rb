
require 'spec_helper'

describe Task do
  fixtures :assignments
  fixtures :categorizations
  fixtures :comments
  fixtures :tags
  fixtures :tasks
  fixtures :users

  context 'when the task is created and assigned' do
    before(:each) do
      @assignment = assignments(:one)
      @task = tasks(:one)
      @creator = users(:alison)
      @assignee = users(:gareth)
    end

    it 'should be able to get the creator' do
      @task.creator.should == @creator
    end

    it 'should be able to get the assignee' do
      @task.assignees.include?(@assignee).should be_true
    end
  end

  context 'when the task is commented on' do
    before(:each) do
      @comment = comments(:one)
      @task = tasks(:one)
    end

    it 'should be able to get the comment' do
      @task.comments.include?(@comment).should be_true
    end
  end

  context 'when the task is tagged' do
    before(:each) do
      @categorization = categorizations(:one)
      @tag = tags(:laundry)
      @task = tasks(:one)
    end

    it 'should be able to access the tag' do
      @task.tags.include?(@tag).should be_true
    end
  end
end
