class BillboardsController < ApplicationController
  
  before_action: set_billbaord, only: [:show, :edit, :update, :destroy]

  def index
    @billboards = Billboard.all

  end

  def show
    # before_action
  end

  def new

  end

  def create

  end

  def edit
    # before_action
  end

  def update
    # before_action

    # neecd to include if/else
  
  end

  def destroy
    # before_action
  
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

end
