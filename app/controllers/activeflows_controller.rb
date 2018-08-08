class ActiveflowsController < ApplicationController
  before_action :set_activeflow, only: [:show, :edit, :update, :destroy]

  # GET /activeflows
  # GET /activeflows.json
  def index
    @activeflows = Activeflow.all
  end

  # GET /activeflows/1
  # GET /activeflows/1.json
  def show
  end

  # GET /activeflows/new
  def new
    @activeflow = Activeflow.new
  end

  # GET /activeflows/1/edit
  def edit
  end

  # POST /activeflows
  # POST /activeflows.json
  def create
    @activeflow = Activeflow.new(activeflow_params)

    respond_to do |format|
      if @activeflow.save
        format.html { redirect_to @activeflow, notice: 'Activeflow was successfully created.' }
        format.json { render :show, status: :created, location: @activeflow }
      else
        format.html { render :new }
        format.json { render json: @activeflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activeflows/1
  # PATCH/PUT /activeflows/1.json
  def update
    respond_to do |format|
      if @activeflow.update(activeflow_params)
        format.html { redirect_to @activeflow, notice: 'Activeflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @activeflow }
      else
        format.html { render :edit }
        format.json { render json: @activeflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activeflows/1
  # DELETE /activeflows/1.json
  def destroy
    @activeflow.destroy
    respond_to do |format|
      format.html { redirect_to activeflows_url, notice: 'Activeflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activeflow
      @activeflow = Activeflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activeflow_params
      params.require(:activeflow).permit(:transactionflow_id, :activeunit_id, :accouttype, :floworderid, :flowtype, :vouchertemplatetype, :contenttype, :resourcestype, :subtransactiontype, :stockaccounttype, :copyresourcestype, :beforeactiveunit_id, :afteractiveunit_id)
    end
end
