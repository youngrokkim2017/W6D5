class CatRentalRequestsController < ApplicationController
  def new
    @cats = Cat.all
    @request = CatRentalRequest.new

    render :new
  end

  def create
    @request = CatRentalRequest.new(request_params)
    @cat = Cat.find(params[:cat_id])

    if @request.save
      render cat_url(@cat)
    else
      render :new
    end
  end

  private

  def request_params
    params.require(:cat_rental_request).permit(:cat_id, :start_date, :end_date)
  end
end
