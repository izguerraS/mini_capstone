class Api::ProductsController < ApplicationController

# def index
#   @products = Product.all

   
def show
  @product = Product.find_by(name: params[:name])
 render 'show.json.jb'
end


def create
  @product = Product.new(
    name: params[:name]
  )
  @product.save
  render 'show.json.jb'
end


def update
  @product = Product.find_by(id: params[:name])

  @product.name = "Toshiba"
 #update particular product
 render 'index.json.jb'
 end


#  def destroy
#   @product = Product.find_by(id: params[:id])
#   @product.destroy
#   render json {message: "you have successfully deleted the recipe"}
#  end
end 
 

    

