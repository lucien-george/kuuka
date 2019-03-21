class PhotosController < ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    if @photo.storage
      redirect_to @photo.storage
    else
      redirect_to @photo.vehicle
    end
  end
end
