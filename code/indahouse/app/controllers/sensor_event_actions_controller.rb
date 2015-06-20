class SensorEventActionsController < ApplicationController
  before_action :set_sensor_event_action, only: [:show, :edit, :update, :destroy]

  # GET /sensor_event_actions
  # GET /sensor_event_actions.json
  def index
    @sensor_event_actions = SensorEventAction.all
  end

  # GET /sensor_event_actions/1
  # GET /sensor_event_actions/1.json
  def show
  end

  # GET /sensor_event_actions/new
  def new
    @sensor_event_action = SensorEventAction.new
  end

  # GET /sensor_event_actions/1/edit
  def edit
  end

  # POST /sensor_event_actions
  # POST /sensor_event_actions.json
  def create
    @sensor_event_action = SensorEventAction.new(sensor_event_action_params)

    respond_to do |format|
      if @sensor_event_action.save
        format.html { redirect_to @sensor_event_action, notice: 'Sensor event action was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_event_action }
      else
        format.html { render :new }
        format.json { render json: @sensor_event_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_event_actions/1
  # PATCH/PUT /sensor_event_actions/1.json
  def update
    respond_to do |format|
      if @sensor_event_action.update(sensor_event_action_params)
        format.html { redirect_to @sensor_event_action, notice: 'Sensor event action was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_event_action }
      else
        format.html { render :edit }
        format.json { render json: @sensor_event_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_event_actions/1
  # DELETE /sensor_event_actions/1.json
  def destroy
    @sensor_event_action.destroy
    respond_to do |format|
      format.html { redirect_to sensor_event_actions_url, notice: 'Sensor event action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_event_action
      @sensor_event_action = SensorEventAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_event_action_params
      params.require(:sensor_event_action).permit(:name, :description, :details)
    end
end
