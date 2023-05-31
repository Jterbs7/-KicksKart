class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update]
  before_action :set_sneaker, only: [:new, :create]

  # all offers
  def index
    @offers = Offer.all
  end

  # Show offer
  def show
  end

  # Show form to create a new offer
  def new
    @offer = Offer.new
  end

  # Create a new offer
  def create
    @offer = @sneaker.offers.new(offer_params)
    @offer.user = current_user

    if @offer.save
      redirect_to sneaker_offers_path(@sneaker, @offer), notice: 'You made an offer'
    else
      render :new
    end
  end

  # Show form to edit an existing offer
  def edit
  end

  # Update an existing offer
  def update
    if @offer.update(offer_params)
      redirect_to sneaker_offers_path(@offer.sneaker, @offer), notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def set_sneaker
    @sneaker = Sneaker.find(params[:sneaker_id])
  end

  def offer_params
    params.require(:offer).permit(:offer_price, :status)
  end
end
