class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all
    @name = "David"
  end

  # GET /guitars/1
  def show
    # guitar_id = params[:id]
    # @guitar = Guitar.find(guitar_id)
    @guitar = Guitar.find(params[:id])
  end

  # POST /guitars
  def create
    guitar = Guitar.create(guitar_params)
    redirect_to guitar
  end

  private
  def guitar_params
    # params = {guitar: {make: 'foo', model: 'bar'}}
    params.require(:guitar).permit(:make, :model, :color, :price, :string_number, :year)
  end
end
