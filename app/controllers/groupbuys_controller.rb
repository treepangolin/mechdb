class GroupbuysController < ApplicationController
  def index
    @groupbuys = Groupbuy.all
  end

  def new
    @groupbuy = Groupbuy.new
    @groupbuy.proxy_links.new
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
      params.require(:groupbuy).permit(:name, :category, :start, :end, :image, proxy_links_attributes: [:id, :name, :region, :link, :_destroy])
    end
end
