class MarinasController < ApplicationController
  before_action :authorize_user, except: [:index, :new, :create, :show]
  def index
    @marinas = Marina.all
  end

  def new
    @marina = Marina.new
  end

  def create
    @marina = Marina.new(marina_params)
    @marina.user_id = current_user.id if current_user
    if @marina.save
      flash[:notice] = 'Marina added successfully'
      redirect_to @marina
    else
      render action: 'new'
    end
  end





end
