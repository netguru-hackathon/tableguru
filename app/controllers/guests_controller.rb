class GuestsController < ApplicationController

  before_action :set_guest, only: [:update, :show, :destroy]
  respond_to :json

  def create
    @guest = current_project.guests.new(guest_params)
    if @guest.save
      render json: @guest
    else
      render({error: 'create failed'}.to_json, status: 400)
    end
  end

  def update
    if @guest.update_attributes(guest_params)
      render json: @guest
    else
      render({error: 'update failed'}.to_json, status: 400)
    end
  end

  def index
    @guests = current_project.guests
    respond_with @guests
  end

  def show
    render json: @guest
  end

  def destroy
    if @guest.destroy()
      render({destroyed: true}.to_json)
    else
      render({error: 'save failed'}.to_json, status: 400)
    end

  end

  private

  def guest_params
    params.require(:guest).permit(:x, :y, :name, :image_url, :group_id)
  end

  def set_guest
    @guest = current_project.guests.find(params[:id])
  end
end
