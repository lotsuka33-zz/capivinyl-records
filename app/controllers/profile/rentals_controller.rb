class Profile::RentalsController < ApplicationController
  def index
    # os que foram emprestados pelo current_user
    @rentals = Rental.where(vinyl: current_user.vinyls)
  end
end
