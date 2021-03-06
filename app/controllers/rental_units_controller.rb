# Authored by: Mitchell Berger, Talha Koc, and Noah Over for COMPSCI 408 at Duke University for Tori Patterson

class RentalUnitsController < ApplicationController
  before_action :set_rental_unit, only: [:show, :edit, :update, :destroy]
  before_action :check_address, only: [:new]
  before_action :check_contact, only: [:new]
  before_action :authenticate_user!

  # GET /rental_units
  # GET /rental_units.json
  def index
    @q = RentalUnit.where(["user_email = ?", current_user.email]).ransack(params[:q])
    @rental_units = @q.result(distinct: true)
  end

  # GET /rental_units/1
  # GET /rental_units/1.json
  def show
  end

  # GET /rental_units/new
  def new
    @rental_unit = RentalUnit.new
  end

  # GET /rental_units/1/edit
  def edit
  end

  # POST /rental_units
  # POST /rental_units.json
  def create
    @rental_unit = RentalUnit.new(rental_unit_params)
    @num = 1
    while RentalUnit.where(["rental_unit_id = ?", @num]).size > 0
      @num = @num + 1
    end
    @rental_unit.rental_unit_id = @num
    @rental_unit.user_email = current_user.email
    respond_to do |format|
      if @rental_unit.save
        format.html { redirect_to @rental_unit, notice: 'Rental unit was successfully created.' }
        format.json { render :show, status: :created, location: @rental_unit }
      else
        format.html { render :new }
        format.json { render json: @rental_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_units/1
  # PATCH/PUT /rental_units/1.json
  def update
    respond_to do |format|
      if @rental_unit.update(rental_unit_params)
        format.html { redirect_to @rental_unit, notice: 'Rental unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_unit }
      else
        format.html { render :edit }
        format.json { render json: @rental_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_units/1
  # DELETE /rental_units/1.json
  def destroy
    @rental_unit.destroy
    respond_to do |format|
      format.html { redirect_to rental_units_url, notice: 'Rental unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_unit
      @rental_unit = RentalUnit.find(params[:id])
    end
    
    def check_address
      unless Address.where(["user_email = ?", current_user.email]).size > 0
        flash[:error] = "You need an address first!"
        redirect_to new_address_path
      end
    end
    
    def check_contact
      unless Contact.where(["user_email = ?", current_user.email]).size > 0
        flash[:error] = "You need a contact first!"
        redirect_to new_contact_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_unit_params
      params.require(:rental_unit).permit(:rental_unit_id, :property_id, :bd_rms, :ba_rms, :rent, :occupied_ind, :pay_heat_ind, :pay_wtr_ind, :pay_gas_ind, :pay_elec_ind, :tenant)
    end
end
