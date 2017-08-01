class ProductsController < ApplicationController
  before_action :find_product, only: [ :show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    # @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save == true
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    # @product = Product.find(params[:id])
  end

  def update
    # @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else render :edit
    end
  end

  def destroy
      # @product = Product.find(params[:id])
      if @product.destroy
          redirect_to products_path
      else render plain: "Impossible de supprimer"
      end
  end

  private
  def product_params
    params.require(:product).permit(:name, :url)
  end

  def find_product
     @product = Product.find(params[:id])
  end


end
