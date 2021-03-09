class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
    
  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
    render json: @pets
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /widgets/new
  def new
    @pet = Pet.new
  end

  # GET /widgets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(widget_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @widget }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end
end
