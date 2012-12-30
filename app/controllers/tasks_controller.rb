class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :json => @tasks
  end

  def new
    render :text => '400'
  end

  def create
    @task = Task.new
    params.each_pair do |k, v|
      case k
      when 'body'
        @task.body = v
      when 'day'
        @task.day = v
      when 'time'
        @task.time = v
      when 'priority'
        @task.priority = v
      when 'state'
        @task.state = v
      end
    end

    @task.save
    render :json => @task
  end

  def show
    # TODO(gareth): Task not found
    @task = Task.find(params[:id])
    render :json => @task
  end

  def edit
    render :text => '400'
  end

  def update
    @task = Task.find(request.path_parameters[:id])
    params.each_pair do |k, v|
      case k
      when 'body'
        @task.body = v
      when 'day'
        @task.day = v
      when 'time'
        @task.time = v
      when 'priority'
        @task.priority = v
      when 'state'
        @task.state = v
      end
    end

    @task.save
    render :text => '200'
  end

  def destroy
    @task = Task.find(request.path_parameters[:id])
    @task.destroy
    render :text => '200'
  end
end
