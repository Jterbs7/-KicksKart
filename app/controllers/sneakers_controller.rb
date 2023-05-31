class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    @sneaker.user = current_user
    if @sneaker.save
      redirect_to sneaker_path(@sneaker)
    else
      render "new"
    end
  end

  def new
    @sneaker = Sneaker.new
  end
end

private
def sneaker_params
  params.require(:sneaker).permit(:title, :brand, :model, :description, :size, :price, :photo)
end
