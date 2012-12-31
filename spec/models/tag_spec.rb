
require 'spec_helper'

describe Tag do
  fixtures :categorizations
  fixtures :tags
  fixtures :tasks

  context 'when a tag is put on a task' do
    before(:each) do
      @categorization = categorizations(:one)
      @tag = tags(:laundry)
      @task = tasks(:one)
    end
  
    it 'should be able to access the tag' do
      @tag.tasks.include?(@task).should be_true
    end
  end
end
