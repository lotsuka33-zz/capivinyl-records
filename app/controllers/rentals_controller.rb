class RentalsController < ApplicationController
  before_action :set_vinyl, only: [:show, :new, :create, :destroy]
  # before_action :all_transactions, only: [:index, :pending, :borrowed, :lent]
  def new
    @rental = Rental.new

  end

  def create
    @rental = Rental.new(rental_params)
    @rental.vinyl = @vinyl
    @rental.user = current_user
    check_available_dates
    # raise
    if @rental.save
      @rental.vinyl.available = false
      redirect_to rentals_path
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

  def destroy
    user_id = @rental.vinyl.user.id
    vinyl_id = @rental.vinyl.id
    @rental.destroy
    # @dose.destroy
    redirect_to rentals_path
  end

  private

  def set_vinyl
    @vinyl = Vinyl.find(params[:vinyl_id])
  end

  def rental_params
    params.require(:rental).permit(:user_id, :vinyl_id, :start_date, :end_date)

  end

  def check_available_dates
    return @rental.user = nil if @rental.start_date < Date.today
    rentals = Rental.where(vinyl: @vinyl)
    if  rentals.where(start_date: (@rental.start_date)..(@rental.end_date)).empty? == false ||
        rentals.where(end_date: (@rental.start_date)..(@rental.end_date)).empty? == false ||
        rentals.where("end_date < ? AND start_date > ?", @rental.end_date, @rental.start_date).empty? == false
      @rental.user = nil
    end
  end
end

  # def all_transactions
  #   @transactions = Transaction.all
  # end

  # def pending
  #   # @transactions = Transaction.where()
  # end

  # def borrowed
  #   @rentals = Rental.where(user_id: params[:id])
  # end

  # def lent
  #   @rentals = Rental.where(vinyl: Vinyl.where(params[:id]))
  # end
