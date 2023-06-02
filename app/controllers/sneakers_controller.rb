class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.where(status: 'available')
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
    # @owned_sneakers = current_user.sneakers
    # @owned_sneakers_pending = current_user.sneakers.joins(:offers).where(offers: { status: 'pending' })
    # @owned_sneakers_pending = current_user.sneakers
    @owned_sneakers_pending = current_user.sneakers.includes(:offers).where(offers: { id: nil })
    @accepted_sneakers = Sneaker.joins(:offers).where(offers: { status: 'accepted', user_id: current_user.id })
    @owned_sneakers_accepted = current_user.sneakers.joins(:offers).where(offers: { status: 'accepted' })
  end

  private

  def sneaker_params
    params.require(:sneaker).permit(:title, :brand, :model, :description, :size, :price, :photo)
  end

end
