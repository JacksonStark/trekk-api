class MarkersController < ApplicationController

  def create
    marker = Marker.new(marker_params)
    saved_marker = marker.save
    markers = Marker.where(params[:trekk_id])
    render :json => { bool: saved_marker, markers: markers }
  end

  def show
    markers = Marker.where(trekk_id: params[:trekk_id])
    render :json => { markers: markers }
  end

  def show_all
    markers = Marker.all
    render :json => { markers: markers }
  end

  private

  def marker_params
    params.permit(:marker_image, :spawned_description, :spawned_image, :spawned_video, :trekk_id)
  end

end
