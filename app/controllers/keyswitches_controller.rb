class KeyswitchesController < ApplicationController
  load_and_authorize_resource

  def index
    @keyswitches = Keyswitch.all
  end

  def show
    @keyswitch = Keyswitch.find(params[:id])
  end

  def new
    @keyswitch = Keyswitch.new
    @keyswitch.links.new
  end

  def create
    @keyswitch = Keyswitch.new(keyswitch_params)

    if @keyswitch.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @keyswitch = Keyswitch.find(params[:id])
  end

  def update
    @keyswitch = Keyswitch.find(params[:id])

    if @keyswitch.update(keyswitch_params)
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @keyswitch = Keyswitch.find(params[:id])
    @keyswitch.destroy

    redirect_to action: 'index'
  end

  private
    def keyswitch_params
      params.require(:keyswitch).permit(:name, :image, :description, :travel_type, :weight, :travel, :manufacturer, links_attributes: [:id, :name, :descriptor, :link, :_destroy])
    end
end
