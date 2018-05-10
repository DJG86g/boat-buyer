class BoatsController < ApplicationController
  before_action :authorize_user, except: [:index, :new, :create, :show]

  def index
    @boats = Boat.all
  end

  def show
  @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      flash[:notice] = 'Boat added successfully'
      redirect_to @boat
    else
      render action: 'new'
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:brand, :model, :year, :hours,
      :engine_size, :number_of_engines, :length_of_boat, :hull_style)
  end

  def authorize_user
    if !user_signed_in?
      raise ActionController::RoutingError.new('You are not authorized to do that!')
    end
  end
end
