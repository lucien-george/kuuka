class StoragesController < ApplicationController
  before_action :find_storage, only: %i[show update edit destroy]
  skip_before_action :authenticate_user!, only: %i[index show new create]
  after_create :send_email_after_create

  def index
    @storages = Storage.all
  end

  def show
  end

  def new
    @storage = Storage.new
    @storage_types = ['Spare Room', 'Garage', 'Locked Space', 'Parking', 'House Space']
  end

  def create
    @storage = Storage.new(storage_params)
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: '123456')
    @storage_types = ['Spare Room', 'Garage', 'Locked Space', 'Parking', 'House Space']
    @storage.user = @user
    if @storage.save
      params[:storage][:photos][:url]&.each do |url|
        @storage.photos.create(url: url)
      end
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
    params.require(:storage).permit(:unit, :height, :width, :depth, :price_per_day, :price_per_week, :price_per_month, :price_per_six_month, :location, :weight_capacity, :storage_type, :insurance, :insurance_type)
  end

  def send_email_after_create
    StorageMailer.new_storage_created(self, user).deliver_now
  end
end
