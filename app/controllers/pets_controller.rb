class PetsController < ApplicationController
    before_action :set_widget, only: [:show, :edit, :update, :destroy]
    
    # GET /pets
    # GET /pets.json
    def index
        @Pet = Pet.all
    end
end
