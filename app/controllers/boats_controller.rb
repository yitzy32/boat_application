class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end

  def show
    @boat = Boat.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @boat = Boat.new(
      title: params[:title],
      color: params[:color],
      capacity: params[:capacity],
      price: params[:price],
    )
    @boat.save

    redirect_to "/boats/#{@boat.id}"
  end
end
