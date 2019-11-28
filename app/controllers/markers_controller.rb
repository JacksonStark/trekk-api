class MarkersController < ApplicationController

  def create
    marker = Marker.new(marker_params)
    savedMarker = marker.save
    render :json => { bool: savedMarker }
  end

  def show
    markers = Marker.all
    render :json => { markers: markers }
  end

  private

  def marker_params
    params.permit(:marker_image, :spawned_description, :spawned_image, :spawned_video, :trekk_id)
  end

end
