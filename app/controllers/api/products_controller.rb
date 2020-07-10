class Api::ProductsController < ApplicationController

 def index
  #  @products = Product.all
  if params[:search]
    @products = Product.where("description LIKE ?", "%#{params[:search]}%")
  else
    @products = Product.all
  end
   render 'index.json.jb'
 end

 def show
  @product = Product.find_by(id: params[:id])
  render 'show.json.jb'
 end

 def create
  @product = Product.new(
    name: params[:name],
    description: params[:description],
    price: params[:price],
  )

  if @product.save
  render 'show.json.jb'
  else
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end
end

 def update
  @product = Product.find_by(id: params[:id])
  @product.name = params[:name]
  @product.description = params[:description]
  @product.price = params[:price]
  
  if @product.save
    render 'show.json.jb'
  else 
  render 'show.json.jb'
  end
 end

 def destroy
  @product = Product.find_by(id: params[:id])
  @product.destroy
  render 'destroy.json.jb'
  end
end


