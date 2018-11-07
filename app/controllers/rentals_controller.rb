class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :destroy]
  # before_action :all_transactions, only: [:index, :pending, :borrowed, :lent]
  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    if @rental.save
      redirect_to user_vinyl_rental_path(@rental.id)
    else
      render :new
    end
  end

  def index
    # que pegou emprestado
    @rentals = current_user.rentals.all
  end

  def show
  end

  # def pending
  #   # @transactions = Transaction.where()
  # end

  # def borrowed
  #   @rentals = Rental.where(user_id: params[:id])
  # end

  # def lent
  #   @rentals = Rental.where(vinyl: Vinyl.where(params[:id]))
  # end

  def destroy
    user_id = @rental.vinyl.user.id
    vinyl_id = @rental.vinyl.id
    @rental.destroy
    # @dose.destroy
    redirect_to rentals_path
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:user_id, :vinyl_id)
  end
  # def all_transactions
  #   @transactions = Transaction.all
  # end
end
