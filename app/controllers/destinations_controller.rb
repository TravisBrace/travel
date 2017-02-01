class DestinationsController < ApplicationController

  def show
    @destination = Destination.find(params[:id])
    @tag = Tag.find(@destination.tag_id)
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to '/tags'
    else
      render 'new'
    end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update_attributes(destination_params)
      redirect_to(:action => 'show', :id => @destination.id)
    else
      render 'edit'
    end
  end

  private
    def destination_params
      params.require(:destination).permit(:name, :description, :image, :tag_id)
    end

end
