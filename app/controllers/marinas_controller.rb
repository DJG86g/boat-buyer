class MarinasController < ApplicationController
  before_action :authorize_user, except: [:index, :new, :create, :show]
  def index
    @marinas = Marina.all
  end

  def new
    @marina = Marina.new
  end

  def show
    @marina = Marina.find(params[:id])
  end

  def create
    @marina = Marina.new(marina_params)
    @marina.user_id = current_user.id if current_user
    if @marina.save
      flash[:notice] = 'Marina added successfully'
      redirect_to marina_path(@marina)
    else
      render action: 'new'
    end
  end

  private
  
  def marina_params
    params.require(:marina).permit(
      :name,
      :address,
      :city,
      :state,
      :zip_code,
      :max_boat_size,
      :public_restroom,
      :gas_dock,
      :public_launch,
      :marina_id
    )
  end
end
