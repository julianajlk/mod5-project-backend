class GarmentsController < ApplicationController
  before_action :find_garment, only: [:show]

  def index
    @garments = Garment.all
    render json: @garments
  end

  def show
    render json: @garment
  end

  def create
    @garment = Garment.create(garment_params)
    render json: @garment
  end

  private
  def find_garment
    @garment = Garment.find(params[:id])
  end

  def garment_params
    params.require(:garment).permit(:name, :image_url, :category, :season, :location, :status, :fabrication, :trim, :sizing, :measurement, :fit_comment, :comment)
  end
end
