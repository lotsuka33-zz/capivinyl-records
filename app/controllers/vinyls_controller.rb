class VinylsController < ApplicationController
  before_action :set_vinyl, only: [:show, :edit, :update, :destroy]

  def index
    @vinyls = Vinyl.all
  #   if policy_scope(Vinyl).nil?
  #     @vinyls = []
  #   else
  #   @vinyls = policy_scope(Vinyl)
  #   end
  # end
# geral
  def show
  end

  def new
    @vinyl = Vinyl.new
    # authorize @vinyl
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)
    @vinyl.user = current_user
    # authorize @vinyl

    if @vinyl.save
      redirect_to vinyls_path(@vinyl), notice: 'Vinyl successfully created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vinyl.update(vinyl_params)
    redirect_to vinyl_path(@vinyl)
  end

# geral
  def destroy
    @vinyl.destroy
    redirect_to vinyls_path
  end

  private

  def set_vinyl
    @vinyl = Vinyl.find(params[:id])
    # authorize @vinyl
  end

  def vinyl_params
    params.require(:vinyl).permit(:album, :year, :artist, :description, :genre)
  end
end
