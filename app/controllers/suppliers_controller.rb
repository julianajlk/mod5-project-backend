class SuppliersController < ApplicationController
  before_action :find_supplier, only: [:show]

  def index
    @suppliers = Supplier.all
    render json: @suppliers
  end

  def show
    render json: @supplier
  end

  private
  def find_supplier
    @supplier = Supplier.find(params[:id])
  end
end
