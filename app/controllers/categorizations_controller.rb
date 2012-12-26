class CategorizationsController < ApplicationController
  def index
    @categorizations = Categorization.all
    render :json => @categorizations
  end

  def new
    render :text => '400'
  end

  def create
    # TODO(gareth)
    render :text => '400'
  end

  def show
    # TODO(gareth): Categorization not found
    @categorization = Categorization.find(params[:id])
    render :json => @categorization
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
