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

  def facebook_callback
    omniauth = request.env['omniauth.auth']
    @user = User.find_or_create_by_facebook_id(omniauth['uid'])

    info = omniauth['info']
    @user.first = info['first_name'] if info['first_name']
    @user.last = info['last_name'] if info['last_name']
    @user.image_url = info['image'] if info['image']
    @user.facebook_me = omniauth.to_json
    @user.facebook_token = omniauth['credentials']['token']
    @user.facebook_token_expiration = omniauth['credentials']['expires_at']

    @user.save
    login(@user)
    redirect_to root_path
  end

  def show
    # TODO(gareth): Handle not found
    @user = User.find(params[:id])
    render :json => @user
  end

  def me
    render :json => current_user
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
