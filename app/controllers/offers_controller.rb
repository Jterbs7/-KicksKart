class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update]
  before_action :set_sneaker, only: [:new, :create]

  # list all made offers and all recieved offers
  def index
    # all pending offers the current user has made on sneakers
    @made_offers = current_user.offers
    # all pending recieved offers if the current user owns a sneaker listing
    @received_offers = Offer.joins(:sneaker).where(sneakers: { user_id: current_user.id })
    # combine made and recieved offers
    @offers = @made_offers + @received_offers
  end

  # show offer detail, before action takes care of this
  def show
  end

  # Show form to create a new offer
  def new
    @offer = Offer.new
  end

  # Create a new offer
  def create
    @offer = @sneaker.offers.new(offer_params) # make a new offer for the selected sneaker with submitted form data
    @offer.user = current_user # Set current user as the maker of the offer
    @offer.status = 'pending' # set default offer status to 'pending'

    # try to save the offer
    if @offer.save
      # if offer saved redirect to the offers page with a confirmation message
      redirect_to offers_path, notice: 'You made an offer'
    else
      # If save fails reload the new offer form
      render :new
    end
  end

  # Show form to edit an existing offer if
  def edit
    if @offer.sneaker.user != current_user
      redirect_to offer_path(@offer), alert: 'You can only edit offers you have received.'
    end
  end

  def update
    if @offer.sneaker.user == current_user
      # update the offer with data from submitted form
      if @offer.update(offer_params)
        # if offer updated redirect to the offer page with a confirmation message
        redirect_to offer_path(@offer), notice: 'Offer was successfully updated.'
      else
        # If update fails reload the update offer form
        render :edit
      end
    else
      # The user is not allowed to edit this offer.
      redirect_to offer_path(@offer.sneaker), alert: 'You can only edit offers you have received.'
    end
  end

  def accept
    @offer = Offer.find(params[:id])
    @sneaker = @offer.sneaker
    if @offer.update(status: 'accepted')
      @sneaker.update(status: 'sold')
      redirect_to offers_path, notice: 'Offer has been accepted and sneaker marked as sold.'
    else
      render :edit, alert: 'Offer not accepted'
    end
  end

  private

  # get offer based on offer id
  def set_offer
    @offer = Offer.find(params[:id])
  end

  # get sneaker based on sneaker id
  def set_sneaker
    @sneaker = Sneaker.find(params[:sneaker_id])
  end

  # to ensure offer has a price and status
  def offer_params
    params.require(:offer).permit(:offer_price, :status)
  end
end
