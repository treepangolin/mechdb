class GroupbuysController < ApplicationController
  load_and_authorize_resource

  def index
    @groupbuys = Groupbuy.all
  end

  def show
    @groupbuy = Groupbuy.find(params[:id])
  end

  def new
    @groupbuy = Groupbuy.new
    @groupbuy.links.new
  end

  def create
    @groupbuy = Groupbuy.new(groupbuy_params)

    if @groupbuy.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @groupbuy = Groupbuy.find(params[:id])
  end

  def update
    @groupbuy = Groupbuy.find(params[:id])

    if @groupbuy.update(groupbuy_params)
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @groupbuy = Groupbuy.find(params[:id])
    @groupbuy.destroy

    redirect_to action: 'index'
  end

  private
    def groupbuy_params
      params.require(:groupbuy).permit(:name, :category, :start_date, :end_date, :image, links_attributes: [:id, :name, :descriptor, :link, :_destroy])
    end
end
