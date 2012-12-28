
require 'spec_helper'

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
