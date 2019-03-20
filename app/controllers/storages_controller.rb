class StoragesController < ApplicationController
  before_action :find_storage, only: %i[show update edit destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @storages = Storage.all
  end

  def show
  end

  def new
    @storage = Storage.new
  end

  def create
    @storage = Storage.new(storage_params)
    @storage.user = current_user
    if @storage.save
      redirect_to storage_path(@storage)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @storage.update(storage_params)
    if @storage.save
      redirect_to storage_path(@storage)
    else
      render :edit
    end
  end

  def destroy
    @storage.destroy
    redirect_to root_path
  end

  private

  def find_storage
    @storage = Storage.find(params[:id])
  end

  def storage_params
    params.require(:storage).permit(:description, :size, { photos: [] })
  end
end
