class TasksController < ApplicationController
  before_filter :authenticate
  before_filter :find_task, :only => [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.where(:creator_id => @user.id)
    render :json => @tasks
  end

  def new
    render :text => '400'
  end

  def create
    @task = Task.new
    @task.creator = @user
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
    render :json => @task
  end

  def edit
    render :text => '400'
  end

  def update
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
    @task.destroy
    render :text => '200'
  end

  private

  def authenticate
    @user = current_user
    p @user
    if !@user
      return render :text => '401'
    end
  end

  def find_task
    task_id = params[:id] || request.path_parameters[:id]
    if !task_id
      return render :text => '400'
    end

    @task = Task.find(task_id)
    if !@task
      return render :text => '404'
    elsif @task.creator != @user
      return render :text => '401'
    end
  end
end
