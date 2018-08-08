class TransactionflowsController < ApplicationController
  before_action :set_transactionflow, only: [:show, :edit, :update, :destroy]

  # GET /transactionflows
  # GET /transactionflows.json
  def index
    @transactionflows = Transactionflow.all
  end

  # GET /transactionflows/1
  # GET /transactionflows/1.json
  def show
  end

  # GET /transactionflows/new
  def new
    @transactionflow = Transactionflow.new
  end

  # GET /transactionflows/1/edit
  def edit
  end

  # POST /transactionflows
  # POST /transactionflows.json
  def create
    @transactionflow = Transactionflow.new(transactionflow_params)

    respond_to do |format|
      if @transactionflow.save
        format.html { redirect_to @transactionflow, notice: 'Transactionflow was successfully created.' }
        format.json { render :show, status: :created, location: @transactionflow }
      else
        format.html { render :new }
        format.json { render json: @transactionflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactionflows/1
  # PATCH/PUT /transactionflows/1.json
  def update
    respond_to do |format|
      if @transactionflow.update(transactionflow_params)
        format.html { redirect_to @transactionflow, notice: 'Transactionflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @transactionflow }
      else
        format.html { render :edit }
        format.json { render json: @transactionflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactionflows/1
  # DELETE /transactionflows/1.json
  def destroy
    @transactionflow.destroy
    respond_to do |format|
      format.html { redirect_to transactionflows_url, notice: 'Transactionflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transactionflow
      @transactionflow = Transactionflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transactionflow_params
      params.require(:transactionflow).permit(:businessflow_id, :transactionunit_id, :transactiontype, :floworderid, :flowtype)
    end
end
