class Api::ProductsController < ApplicationController

    def name
        @name = Product[0]["name"]
        

        render 'name_information.json.jb'
    end

    def price
        @price = Product[0]["price"]

        render 'price_information.json.jb'
    end

    def image_url
        @image_url = Product[0]["image_url"]

        render 'image_url_information.json.jb'
    end

    def description
        @description = Product[0]["description"]

        render 'description_information.json.jb'
    end
end
