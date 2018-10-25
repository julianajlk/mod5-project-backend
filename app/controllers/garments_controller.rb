class GarmentsController < ApplicationController
  before_action :find_garment, only: [:show, :update, :destroy]

  def index
    @garments = Garment.all
    render json: @garments
  end

  def show
    render json: @garment
  end

  # def create
  #   @garment = Garment.new(garment_params)
  #
  #   if @garment.materialsIds.present?
  #     #   look up materials with this id
  #     @material.find(@garment.materialsIds)
  #   end
  #   @garment.url = url_for(@garment.cover_upload.attachment.blob)
  #   # byebug
  #   if @garment.save
  #     render json: @garment
  #   else
  #     render json: {error: @garment.errors}, status: :unprocessable_entity
  #     #console logs the error 422
  #     #status: 422
  #   end
  # end

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

  def create
    #create new garment
    @garment = Garment.new(garment_params)
      #create upload url
    @garment.url = url_for(@garment.cover_upload.attachment.blob)

    #iterate over params[:materialsIds]
        #for each material id, create a new GarmentMaterial with @garment.id
    materialsIdsArray = garment_params["materialsIds"].split(',')
    materialsIdsArray.each {|m| @garment_material = GarmentMaterial.create(garment_id: @garment.id, material_id: m.to_i)}

    if @garment.save
      #map over the same array and find each material with each id
      new_materials =
      materialsIdsArray.map {|m| Material.find_by(id: m.to_i)}
        #need to set materials to @garment
      @garment.materials = new_materials
      render json: @garment
    else
      render json: {error: @garment.errors}, status: :unprocessable_entity
    end
  end

  # update when upload image is true
  def update
    @garment.update!(garment_params)
      # condition for not having an uploaded file (opposite: .blank?)
    if @garment.cover_upload.attachment.present?
      @garment.url = url_for(@garment.cover_upload.attachment.blob)
    end
    if @garment.save
      render json: @garment, status: :accepted
    else
      render json: {errors: @garment.errors.full_message}, status: :unprocessible_entity
    end
  end

  def destroy
    Garment.find(params[:id]).cover_upload.purge
    render json: Garment.find(params[:id]).destroy
  end

  private
  def find_garment
    @garment = Garment.find(params[:id])
  end

  def garment_params
    # no .require(:garment) bc of upload
    params.permit(:id, :brand_id, :materialsIds, :cover_upload, :url, :name, :image_url, :category, :season, :approved, :location, :status, :fabrication, :sizing, :measurement, :fit_comment, :comment)

  end
end
