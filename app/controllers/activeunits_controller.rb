class ActiveunitsController < ApplicationController
  before_action :set_activeunit, only: [:show, :edit, :update, :destroy]

  # GET /activeunits
  # GET /activeunits.json
  def index
    @activeunits = Activeunit.all
  end

  # GET /activeunits/1
  # GET /activeunits/1.json
  def show
  end

  # GET /activeunits/new
  def new
    @activeunit = Activeunit.new
  end

  # GET /activeunits/1/edit
  def edit
  end

  # POST /activeunits
  # POST /activeunits.json
  def create
    @activeunit = Activeunit.new(activeunit_params)

    respond_to do |format|
      if @activeunit.save
        format.html { redirect_to @activeunit, notice: 'Activeunit was successfully created.' }
        format.json { render :show, status: :created, location: @activeunit }
      else
        format.html { render :new }
        format.json { render json: @activeunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activeunits/1
  # PATCH/PUT /activeunits/1.json
  def update
    respond_to do |format|
      if @activeunit.update(activeunit_params)
        format.html { redirect_to @activeunit, notice: 'Activeunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @activeunit }
      else
        format.html { render :edit }
        format.json { render json: @activeunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activeunits/1
  # DELETE /activeunits/1.json
  def destroy
    @activeunit.destroy
    respond_to do |format|
      format.html { redirect_to activeunits_url, notice: 'Activeunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activeunit
      @activeunit = Activeunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activeunit_params
      params.require(:activeunit).permit(:transactionunit_id, :code, :name, :accounttype)
    end
end
