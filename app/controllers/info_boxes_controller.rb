class InfoBoxesController < ApplicationController
  before_action :set_info_box, only: [:show, :edit, :update, :destroy]

  # GET /info_boxes
  # GET /info_boxes.json
  def index
    @info_boxes = InfoBox.all
  end

  # GET /info_boxes/1
  # GET /info_boxes/1.json
  def show
  end

  # GET /info_boxes/new
  def new
    @info_box = InfoBox.new
  end

  # GET /info_boxes/1/edit
  def edit
  end

  # POST /info_boxes
  # POST /info_boxes.json
  def create
    @info_box = InfoBox.new(info_box_params)

    respond_to do |format|
      if @info_box.save
        format.html { redirect_to @info_box, notice: 'Info box was successfully created.' }
        format.json { render :show, status: :created, location: @info_box }
      else
        format.html { render :new }
        format.json { render json: @info_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_boxes/1
  # PATCH/PUT /info_boxes/1.json
  def update
    respond_to do |format|
      if @info_box.update(info_box_params)
        format.html { redirect_to @info_box, notice: 'Info box was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_box }
      else
        format.html { render :edit }
        format.json { render json: @info_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_boxes/1
  # DELETE /info_boxes/1.json
  def destroy
    @info_box.destroy
    respond_to do |format|
      format.html { redirect_to info_boxes_url, notice: 'Info box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_box
      @info_box = InfoBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_box_params
      params.require(:info_box).permit(:icon, :title, :content, :active)
    end
end
