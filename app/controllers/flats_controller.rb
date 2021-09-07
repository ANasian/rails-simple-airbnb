class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @query = params[:query] unless (params[:query] == "")
    if @query
      @flats = Flat.where("name LIKE '%#{@query}%'")
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
