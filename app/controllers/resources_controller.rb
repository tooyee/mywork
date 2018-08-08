class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  # GET /resources.json
  def index
    # unless params[:resourcetype_id].blank?
    #   @resources = Resource.where(resourcetype: params[:resourcetype_id])
    # else
    #   @resources = Resource.all
    # end

    @resources = Resource.all

  end
# <% @resources.where('resourcetype' => 2).each do |resource| %>

  # GET /resources/search
  def search
    unless params[:search_id].blank?
      @resources = Resource.where(resourcetype: params[:search_id])
    else
      @resources = Resource.all
    end


    # params.require(:resource).permit(:resourcetype_id)

    render :index

    # @resources = Resource.where(params[:resourcetype])
  end

  # def index(@type => 1)
  #   @resources = Resource.where('resourcetype' => @type)
  # end

  # GET /resources/1
  # GET /resources/1.json
  def show
  end

  # GET /resources/new
  def new
    @resource = Resource.new

  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource,
          notice: 'Resource was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.js
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:code, :name, :resourcetype )
    end
end
