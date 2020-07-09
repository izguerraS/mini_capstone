class Api::ProductsController < ApplicationController

 def index
   @products = Product.all
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

 def destroy
  @product = Product.find_by(id: params[:id])
  @product.destroy
  render 'destroy.json.jb'
 end
 end
end