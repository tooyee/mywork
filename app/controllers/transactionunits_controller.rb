class TransactionunitsController < ApplicationController
  before_action :set_transactionunit, only: [:show, :edit, :update, :destroy]

  # GET /transactionunits
  # GET /transactionunits.json
  def index
    @transactionunits = Transactionunit.all
  end

  # GET /transactionunits/1
  # GET /transactionunits/1.json
  def show
  end

  # GET /transactionunits/new
  def new
    @transactionunit = Transactionunit.new
  end

  # GET /transactionunits/1/edit
  def edit
  end

  # POST /transactionunits
  # POST /transactionunits.json
  def create
    @transactionunit = Transactionunit.new(transactionunit_params)

    respond_to do |format|
      if @transactionunit.save
        format.html { redirect_to @transactionunit, notice: 'Transactionunit was successfully created.' }
        format.json { render :show, status: :created, location: @transactionunit }
      else
        format.html { render :new }
        format.json { render json: @transactionunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactionunits/1
  # PATCH/PUT /transactionunits/1.json
  def update
    respond_to do |format|
      if @transactionunit.update(transactionunit_params)
        format.html { redirect_to @transactionunit, notice: 'Transactionunit was successfully updated.' }
        format.json { render :show, status: :ok, location: @transactionunit }
      else
        format.html { render :edit }
        format.json { render json: @transactionunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactionunits/1
  # DELETE /transactionunits/1.json
  def destroy
    @transactionunit.destroy
    respond_to do |format|
      format.html { redirect_to transactionunits_url, notice: 'Transactionunit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transactionunit
      @transactionunit = Transactionunit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transactionunit_params
      params.require(:transactionunit).permit(:businessunit_id, :code, :name, :transactiontype)
    end
end
