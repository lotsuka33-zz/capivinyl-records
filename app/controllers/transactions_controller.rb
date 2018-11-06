class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :destroy]
  # before_action :all_transactions, only: [:index, :pending, :borrowed, :lent]
  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.save
  end

  def index
    @transactions = Transaction.all
  end

  def show
  end

  def pending
    # @transactions = Transaction.where()
  end

  def borrowed
    @transactions = Transaction.where(user_id: params[:id])
  end

  def lent
    @transactions = Transaction.where(vinyl: Vinyl.where(params[:id]))
  end

  def destroy
    @transaction.destroy
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:user_id, :vinyl_id)
  end
  # def all_transactions
  #   @transactions = Transaction.all
  # end
end
