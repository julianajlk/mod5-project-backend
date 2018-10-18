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
    @garment = Garment.new(garment_params)
    @garment.url = url_for(@garment.cover_upload.attachment.blob)
    # byebug
    if @garment.save
      render json: @garment
    else
      render json: {error: @garment.errors}, status: :unprocessable_entity
      #console logs the error 422
      #status: 422
    end
  end

#create method before changed code to add upload
  # def create
  #   #.new and .save will tell you if it created or not (vs. .create)
  #   #@garment.errors will tell you the errors of why it was not created
  #   @garment = Garment.new(garment_params)
  #   if @garment.save
  #     render json: @garment
  #   else
  #     render json: {error: @garment.errors}, status: :unprocessable_entity
  #     #console logs the error 422
  #     #status: 422
  #   end
  # end

  private
  def find_garment
    @garment = Garment.find(params[:id])
  end

  def garment_params
    params.permit(:brand_id, :cover_upload, :url, :name, :image_url, :category, :season, :location, :status, :fabrication, :trim_button, :trim_label, :trim_zipper, :trim_hangtag, :sizing, :measurement, :fit_comment, :comment)
    # params.require(:garment).permit(:brand_id, :name, :image_url, :category, :season, :location, :status, :fabrication, :trim_button, :trim_label, :trim_zipper, :trim_hangtag, :sizing, :measurement, :fit_comment, :comment)
  end
end
