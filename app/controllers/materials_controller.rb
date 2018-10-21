class MaterialsController < ApplicationController
  def index
    @materials = Material.all
    render json: @materials
  end

  def show
    render json: @material
  end

  def create
    @material = Material.new(material_params)
    if @material.save
      render json: @material
    else
      render json: {error: @material.errors}, status: :unprocessable_entity
      #console logs the error 422
      #status: 422
    end
  end

  private
  def material_params
    params.require(:material).permit(:supplier_id, :name, :item_number, :category, :size, :quantity, :color, :usage, :price, :comment)
  end

end
