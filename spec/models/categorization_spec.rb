
require 'spec_helper'

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
