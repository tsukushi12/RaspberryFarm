class FarmController < ApplicationController
  before_action :authenticate_user!, :get_user
  before_action :arleady_associate!, only: [:attach_name, :save_name]
  def index
  end


  def associate
    @farm = Farm.find_by(key: params[:key].to_i)
    if @farm && !@farm.already_user?
      if @farm.update(user_id: @user.id)
        redirect_to farm_index_path, notice: '連携完了' and return
      end
    end
    redirect_to farm_index_path, alert: '失敗'
  end

  def attach_name
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def save_name
    @farm = Farm.find(params[:id])
    if @farm.update(name: params[:name])
      redirect_to farm_path(@farm), notice: '変更しました' and return
    else
      redirect_to farm_path(@farm), alert: '失敗しました'
    end
  end

  def watering_que
    @farm = Farm.find(params[:id])
    if @farm.watering.create()
      redirect_to farm_path(@farm), notice: '給水します'
    else
      redirect_to farm_path(@farm), alert: '給水に失敗しました'
    end
  end

  private
  def get_user
    @user = current_user
  end

  def arleady_associate!
    redirect_to farm_index_path, alert: 'ダメだよ' if @user.farm == []
  end
end
