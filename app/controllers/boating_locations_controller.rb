class BoatingLocationsController < ApplicationController
  before_action :authorize_user, except: [:index, :new, :create, :show]
  def index
    @boating_locations = BoatingLocation.all
  end

  def show
    @boating_location = BoatingLocation.find(params[:id])
  end

  def new
    @boating_location = BoatingLocation.new
  end

  def create
    @boating_location = BoatingLocation.new(boating_location_params)
    @boating_location.user_id = current_user.id if current_user
    if @boating_location.save
      flash[:notice] = 'Boating Location added successfully'
      redirect_to @boating_location
    else
      render action: 'new'
    end
  end



  private

  def boating_location_params
    params.require(:boating_location).permit(:name, :address, :lat_long, :gas_dock,
      :public_launch, :public_restroom)
  end

end
