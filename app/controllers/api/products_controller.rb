class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end
    if params[:discount]
      @products = @products.where("price < ?", 10)
    end
    if params[:sort] == "price"
      if params[:sort_order] == "asc"
        @products = @products.order(:price)
      elsif params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      end
    else
      @products = @products.order(:id)
    end
    render 'index.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    if @product.save # happy path
      render 'show.json.jb'
    else # sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @product = Product.find(params[:id])
    
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Product successfully destroyed"}
  end

end
