class BusinessflowsController < ApplicationController
  before_action :set_businessflow, only: [:show, :edit, :update, :destroy]

  # GET /businessflows
  # GET /businessflows.json
  def index
    @businessflows = Businessflow.all
  end

  # GET /businessflows/1
  # GET /businessflows/1.json
  def show
  end

  # GET /businessflows/new
  def new
    @businessflow = Businessflow.new
  end

  # GET /businessflows/1/edit
  def edit
  end

  # POST /businessflows
  # POST /businessflows.json
  def create
    @businessflow = Businessflow.new(businessflow_params)

    respond_to do |format|
      if @businessflow.save
        format.html { redirect_to @businessflow, notice: 'Businessflow was successfully created.' }
        format.json { render :show, status: :created, location: @businessflow }
      else
        format.html { render :new }
        format.json { render json: @businessflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businessflows/1
  # PATCH/PUT /businessflows/1.json
  def update
    respond_to do |format|
      if @businessflow.update(businessflow_params)
        format.html { redirect_to @businessflow, notice: 'Businessflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @businessflow }
      else
        format.html { render :edit }
        format.json { render json: @businessflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businessflows/1
  # DELETE /businessflows/1.json
  def destroy
    @businessflow.destroy
    respond_to do |format|
      format.html { redirect_to businessflows_url, notice: 'Businessflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businessflow
      @businessflow = Businessflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businessflow_params
      params.require(:businessflow).permit(:businessunit_id, :code, :name, :remarks)
    end
end
