class TrekksController < ApplicationController

  def create
    trekk = Trekk.new(trekk_params)
    access_code = SecureRandom.hex(3)
    trekk.access_code = access_code
    trekk.save
    created_trekk = Trekk.find_by(access_code: access_code)

    render :json => { trekk_id: created_trekk.id, name: created_trekk.name }
  end

  # def update 
  #   trekk = Trekk.find_by(trekk_id: params[:trekk_id])
  #   trekk.update(name: params[:name])
  # end

  def show
    trekks = Trekk.where(user_id: params[:user_id])
    render :json => { trekks: trekks }
  end

  def show_all
    trekks = Trekk.all
    render :json => { trekks: trekks }
  end

  def delete
    Trekk.find_by(id: params[:trekk_id]).destroy
    # SEND ALL TREKKS (UPDATED) BACK
    trekks = Trekk.where(user_id: params[:user_id])
    render :json => { trekks: trekks }
  end

  def guest
    trekk = Trekk.find_by(access_code: params[:access_code])
    markers = Marker.where(trekk_id: trekk.id)
    render :json => { markers: markers }
  end


  private

  def trekk_params
    params.permit(:user_id, :name)
  end

end
