class GarmentMaterialsController < ApplicationController
  before_action :find_garment_material, only: [:show, :update, :destroy]

  def index
    @garment_materials = GarmentMaterial.all
    render json: @garment_materials
  end

  def show
    render json: @garment_materials
  end

  def create
    @garment_material = GarmentMaterial.create(garment_material_params)
    if @garment_material.save
      render json: @garment_material
    else
      render json: {error: @garment_material.errors}, status: :unprocessable_entity
    end
  end

  def update
    @garment_material.update(user_params)
    if @garment_material.save
      render json: @garment_material, status: :accepted
    else
      render json: {errors: @garment_material.errors.full_message}, status: :unprocessible_entity
    end
  end

  private
  def find_garment_material
    @garment_material = GarmentMaterial.find(params[:id])
  end

  def garment_material_params
    params.require(:garment_material).permit(:garment_id, :material_id)
  end
end
