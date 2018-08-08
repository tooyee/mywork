class ActivesController < ApplicationController
  before_action :set_active, only: [:show, :edit, :update, :destroy]

  # GET /actives
  # GET /actives.json
  def index
    @actives = Active.all
  end

  # GET /actives/1
  # GET /actives/1.json
  def show
  end

  # GET /actives/new
  def new
    @active = Active.new
    # new_record = old_record.dup
    # new_active = old_active.dup
    # @active.add_old_resourceslines(active_params)
  end

  # GET /actives/copyfrom
  def copyform
    @active = Active.new
  end

  # GET /actives/clone
  def clone
    @old_active = Active.find(params[:id]) # find original object
    @active = Active.new(@old_active.attributes) # initialize duplicate (not saved)
    @active.id = nil
    @active.activeflow_id = @old_active.activeflow.afteractiveunit_id
    @active.save
    @active.add_old_resourceslines(@old_active)
    # update_old_resourceslines(@old_active)

    render :edit # render same view as "new", but with @prescription attributes already filled in
  end

  # def update_old_resourceslines(active)
  #   active.resourceslines.each do |old_resourceslines|
  #     # Active.resourceslines << old_resourceslines
  #     # puts old_resourceslines
  #     # @resourcesline = @active.resourceslines.create(old_resourceslines)
  #     puts old_resourceslines.openqty
  #
  #     @resourcesline = Resourcesline.find(old_resourceslines.id)
  #     @resourcesline.openqty = 0
  #     @resourcesline.save
  #
  #
  #
  #     # old_resourceslines.openqty = 0
  #     # render html: "old_resourceslines.name"
  #     # format.html { "ee" }
  #     # @active.resourceslines.new << old_resourceslines
  #     # throw :abort
  #   end
  # end

  # GET /actives/1/edit
  def edit
  end

  # POST /actives
  # POST /actives.json
  def create
    @active = Active.new(active_params)
    respond_to do |format|
      if @active.save
        puts @active.id
        format.html { redirect_to @active, notice:  'Active was successfully created.' }
        format.json { render :show, status: :created, location: @active }
      else
        format.html { render :new }
        format.json { render json: @active.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actives/1
  # PATCH/PUT /actives/1.json
  def update
    respond_to do |format|
      if @active.update(active_params)
        format.html { redirect_to @active, notice: 'Active was successfully updated.' }
        format.json { render :show, status: :ok, location: @active }
      else
        format.html { render :edit }
        format.json { render json: @active.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actives/1
  # DELETE /actives/1.json
  def destroy
    @active.destroy
    respond_to do |format|
      format.html { redirect_to actives_url, notice: 'Active was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active
      @active = Active.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_params
      params.require(:active).permit(:activeflow_id, :resource_id, :status, :remarks)
    end



end
