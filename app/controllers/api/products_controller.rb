class Api::ProductsController < ApplicationController

    def name
        

        render 'name_information.json.jb'
    end

end
