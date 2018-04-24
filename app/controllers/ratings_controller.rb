class RatingsController < ApplicationController
  def new
  end

  def show
    @site1 = Site1.sum(:rating)
    @site2 = Site2.sum(:rating)
    @site3 = Site3.sum(:rating)
    @site4 = Site4.sum(:rating)
    @site5 = Site5.sum(:rating)
    @now = Date.today
    @total1 =  Site1.select("date(created_at) as site1_date, sum(rating) as total_price").group("date(created_at)")
  end
end
