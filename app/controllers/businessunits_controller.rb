class BusinessunitsController < ApplicationController
  before_action :set_businessunit, only: [:show, :edit, :update, :destroy]

  # GET /businessunits
  # GET /businessunits.json
  def index
    @businessunits = Businessunit.all
  end

  # GET /businessunits/1
  # GET /businessunits/1.json
  def show
  end

  # GET /businessunits/new
  def new
    @businessunit = Businessunit.new
  end

  # GET /businessunits/1/edit
  def edit
  end

  # POST /businessunits
  # POST /businessunits.json
  def create
    @businessunit = Businessunit.new(businessunit_params)

    respond_to do |format|
      if @businessunit.save
        format.html { redirect_to @businessunit, notice: 'Businessunit was successfully created.' }
        format.json { render :show, status: :created, location: @businessunit }
      else
        format.html { render :new }
        format.json { render json: @businessunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businessunits/1
  # PATCH/PUT /businessunits/1.json
  def update
    respond_to do |format|
      if @businessunit.update(businessunit_params)
        format.html { redirect_to @businessunit, notice: 'Businessunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @businessunit }
      else
        format.html { render :edit }
        format.json { render json: @businessunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businessunits/1
  # DELETE /businessunits/1.json
  def destroy
    @businessunit.destroy
    respond_to do |format|
      format.html { redirect_to businessunits_url, notice: 'Businessunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businessunit
      @businessunit = Businessunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businessunit_params
      params.require(:businessunit).permit(:code, :name)
    end
end
