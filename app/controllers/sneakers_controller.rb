class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
    @offer = Offer.new
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

  def my_sneakers
    @owned_sneakers = current_user.sneakers
    @accepted_sneakers = Sneaker.joins(:offers).where(offers: { status: 'accepted', user_id: current_user.id })
  end

  private

  def sneaker_params
    params.require(:sneaker).permit(:title, :brand, :model, :description, :size, :price, :photo)
  end

end
