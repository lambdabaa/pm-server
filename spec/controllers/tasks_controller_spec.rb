
require 'spec_helper'

describe TasksController do
  fixtures :tasks

  context 'GET index' do
    it 'should return a json array of all the objects' do
      get :index
      hash = JSON.parse(tasks(:one).to_json)
      JSON.parse(response.body).include?(hash).should be_true
    end
  end

  context 'POST create' do
    before(:each) do
    end

    it 'should save the object to the database' do
      # TODO(gareth)
      post :create
    end
  end

  context 'GET show' do
    before(:each) do
      @task = tasks(:one)
    end

    it 'should return a json object with the parameter id' do
      get :show, :id => @task.id
      hash = JSON.parse(@task.to_json)
      JSON.parse(response.body).should == hash
    end
  end

  context 'PUT update' do
    before(:each) do
      @task = tasks(:one)
      request.stub(:path_parameters).and_return({ :id => @task.id })
    end

    it 'should update the object in the database' do
      # TODO(gareth)
      put :update, :id => @task.id
    end
  end

  context 'DELETE destroy' do
    before(:each) do
      @task = tasks(:one)
    end

    it 'should remove the object from the database' do
      # TODO(gareth)
      delete :destroy, :id => @task.id
    end
  end
end
