class ResourceslinesController < ApplicationController
  before_action :set_resourcesline, only: [:show, :edit, :update, :destroy]

  # GET /resourceslines
  # GET /resourceslines.json
  def index
    @resourceslines = Resourcesline.all
  end

  # GET /resourceslines/1
  # GET /resourceslines/1.json
  def show
  end

  # GET /resourceslines/new
  def new
    @resourcesline = Resourcesline.new
  end

  # GET /resourceslines/1/edit
  def edit
  end

  # POST /resourceslines
  # POST /resourceslines.json
  def create
    @active = Active.find(params[:active_id])
    @resourcesline = @active.resourceslines.create(resourcesline_params)
    #redirect_to actives_path(@active)
    # redirect_to @active
    redirect_to edit_active_path(@active)
  end




  # def create_old
  #   @resourcesline = Resourcesline.new(resourcesline_params)
  #
  #   respond_to do |format|
  #     if @resourcesline.save
  #       format.html { redirect_to @resourcesline, notice: 'Resourcesline was successfully created.' }
  #       format.json { render :show, status: :created, location: @resourcesline }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @resourcesline.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /resourceslines/1
  # PATCH/PUT /resourceslines/1.json
  def update
    @active = Active.find(resourcesline_params[:active_id])
    respond_to do |format|
      @resourcesline.update_old_resourceslines_openqty(@resourcesline,resourcesline_params[:quantity])

      if @resourcesline.update(resourcesline_params)
        # @resourcesline.update_old_resourceslines_openqty(@resourcesline)
        format.html { redirect_to edit_active_path(@active), notice: 'Resourcesline was successfully updated.' }
        format.json { render :show, status: :ok, location: @resourcesline }
      else
        format.html { render :edit }
        format.json { render json: @resourcesline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resourceslines/1
  # DELETE /resourceslines/1.json
  def destroy
    @active = Active.find(params[:active_id])
    @resourcesline = @active.resourceslines.find(params[:id])
    @resourcesline.destroy
    #redirect_to actives_path(@active)
    # redirect_to @active
    redirect_to active_path(@active)
  end

  def destroy_old
    @resourcesline.destroy
    respond_to do |format|
      format.html { redirect_to resourceslines_url, notice: 'Resourcesline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resourcesline
      @resourcesline = Resourcesline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resourcesline_params
      params.require(:resourcesline).permit(:active_id, :business_id,
         :resource_id, :quantity, :price, :cost,
          :vatgroup, :whscode, :status, :openqty)
    end
end
