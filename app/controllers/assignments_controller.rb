class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
    render :json => @assignments
  end

  def new
    render :text => '400'
  end

  def create
    # TODO(gareth)
    render :text => '400'
  end

  def show
    # TODO(gareth): Assignment not found
    @assignment = Assignment.find(params[:id])
    render :json => @assignment
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
