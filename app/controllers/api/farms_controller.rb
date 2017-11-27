class Api::FarmsController < Api::ApplicationController
  before_action :get_farm

  def get_watering_status
    @watering = @farm.watering.last
    render json: , status: 200
  end

  def end_watering
    @watering = @farm.watering.last

    @watering.update(status: 1)

  end
  def get_sensor
    @status = @farm.status.new(statu_params)
    @status.img = params[:files]
    if @status.save
      render json: [200], status: 200
    else
      render json: [400], status: 400
    end
  end

  private
  def get_farm
    @farm = Farm.find_or_create_by(key: params[:key].to_i)
  end
  def statu_params
    params.permit(:light, :temp, :humi, :soil_humi)
  end
end
