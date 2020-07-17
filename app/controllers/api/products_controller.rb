class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create]


  def index
    @products = Product.where("name LIKE ?", "%#{params[:search]}%")

    if params[:discount] == "true"
      @products = @products.where('price < 10')
    end

    if params[:sort] == "price" && params[:sort_order] == 'desc'
      @products = @products.order(:price => :desc)
    elsif params[:sort] == "price"
      @products = @products.order(:price)    
    else
      @products = @products.order(:id)
    end
    ls
    render 'index.json.jb'
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

def id
  @id = Id.new(
  )
  render 'show.json.jb'
  end
end


def supplier
  @supplier = Supplier.all
  render 'show.json.jb'
 end
