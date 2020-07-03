class Api::ProductsController < ApplicationController

    def index
    @product = Product.all

    render 'index.json.jb'
end

    
end
