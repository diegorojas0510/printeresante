class PinsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  #metodo para listar todos los pins
  def index
    @pins = Pin.all
  end

  # metodo para crear un nuevo pin
  def new
    @pin = Pin.new
  end

  def  show
  end

  def edit
  end

  # metodo para crear un nuevo pin
  def create
    pin = Pin.new(pin_params)
    pin.user = current_user
    if pin.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    pin = Pin.find(params[:id])
    pin.destroy
    redirect_to root_path
  end

  private

  def authenticate_user!
    # code here
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :image_url)
  end
end