class UsersController < ApplicationController
  def index
    @users = User.all
    render :json => @users
  end

  def new
    render :text => '400'
  end

  def create
    # TODO(gareth)
    render :text => '400'
  end

  def show
    # TODO(gareth): Handle not found
    @user = User.find(params[:id])
    render :json => @user
  end

  def edit
    render :text => '400'
  end

  def update
    # TODO(gareth)
    render :text => '400'
  end

  def destroy
    # TODO(gareth)
    render :text => '400'
  end
end
