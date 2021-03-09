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

  # GET /pet/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pets.save
        format.html { redirect_to @pets, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pets }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pets.update(pet_params)
        format.html { redirect_to @pets, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pets }
      else
        format.html { render :edit }
        format.json { render json: @pets.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pets.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pets = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :description, :age, :tipo, :size, :color, :vaccination, :castration, :description, :is_adopted)
    end
  end
end
