class Api::ProductsController < ApplicationController

 def index
   @products = Product.all
   render 'index.json.jb'
 end

 def show
  @product = Product.second
  render 'show.json.jb'
 end
end