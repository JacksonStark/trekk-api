class TrekksController < ApplicationController

  def create
    trekk = Trekk.new(trekk_params)
    trekk.access_code = SecureRandom.hex(3)
    trekk.save
  end

  def show_all
    trekks = Trekk.all
    render :json => { trekks: trekks }
  end

  def show
    trekks = Trekk.where(user_id: params[:user_id])
    render :json => { trekks: trekks }
  end

  private

  def trekk_params
    params.permit(:name, :user_id)
  end

end
