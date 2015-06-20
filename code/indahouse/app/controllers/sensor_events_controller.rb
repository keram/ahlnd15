class SensorEventsController < ApplicationController
  before_action :set_sensor_event, only: [:show, :edit, :update, :destroy]

  # GET /sensor_events
  # GET /sensor_events.json
  def index
    @sensor_events = SensorEvent.all
  end

  # GET /sensor_events/1
  # GET /sensor_events/1.json
  def show
  end

  # GET /sensor_events/new
  def new
    @sensor_event = SensorEvent.new
  end

  # GET /sensor_events/1/edit
  def edit
  end

  # POST /sensor_events
  # POST /sensor_events.json
  def create
    @sensor_event = SensorEvent.new(sensor_event_params)

    respond_to do |format|
      if @sensor_event.save
        format.html { redirect_to @sensor_event, notice: 'Sensor event was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_event }
      else
        format.html { render :new }
        format.json { render json: @sensor_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_events/1
  # PATCH/PUT /sensor_events/1.json
  def update
    respond_to do |format|
      if @sensor_event.update(sensor_event_params)
        format.html { redirect_to @sensor_event, notice: 'Sensor event was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_event }
      else
        format.html { render :edit }
        format.json { render json: @sensor_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_events/1
  # DELETE /sensor_events/1.json
  def destroy
    @sensor_event.destroy
    respond_to do |format|
      format.html { redirect_to sensor_events_url, notice: 'Sensor event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_event
      @sensor_event = SensorEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_event_params
      params.require(:sensor_event).permit(:name, :description)
    end
end
