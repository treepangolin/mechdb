class HomeController < ApplicationController
  def index
    @featured_groupbuys = Groupbuy.order('end_date').first(3)
  end
end