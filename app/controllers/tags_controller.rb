class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render :json => @tags
  end

  def new
    render :text => '400'
  end

  def create
    # TODO(gareth)
    render :text => '400'
  end

  def show
    # TODO(gareth): Tag not found
    @tag = Tag.find(params[:id])
    render :json => @tag
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
