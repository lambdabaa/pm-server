
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

describe Categorization do
  fixtures :categorizations
  fixtures :tags
  fixtures :tasks

  context 'when a categorization is made between a task and a tag' do
    before(:each) do
      @categorization = categorizations(:one)
      @tag = tags(:laundry)
      @task = tasks(:one)
    end

    it 'should be able to get both the task and the tag' do
      @categorization.tag.should == @tag
      @categorization.task.should == @task
    end
  end
end

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

describe Tag do
  fixtures :tags
  fixtures :tasks

  context 'when a tag is put on a task' do
    before(:each) do
      @tag = tags(:laundry)
      @task = tasks(:one)
    end
  
    it 'should be able to access the tag' do
      @tag.tasks.include?(@task).should be_true
    end
  end
end

describe Task do
  fixtures :assignments
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
      @tag = tags(:laundry)
      @task = tasks(:one)
    end

    it 'should be able to access the tag' do
      @task.tags.include?(@tag).should be_true
    end
  end
end

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
