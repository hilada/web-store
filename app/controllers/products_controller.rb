class ProductsController < ApplicationController


  def index
    @products = Product.sorted
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # Instantiate a new object using form parameters
    @product = Product.new()
    # Save the object
    if @product.save
      # If save succeeds, redirect to the index action
      redirect_to(products_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :cpu, :camera, :size, :weight, :display, :battery, :memory)
  end
end
