class ChairsController < ApplicationController

  before_action :set_chair, only: [:update, :show, :destroy]
  respond_to :json

  def create
    @chair = current_project.chairs.new(chair_params)
    if @chair.save
      render json: @chair
    else
      render text: "error: #{@chair.errors.full_messages}", status: 400
    end
  end

  def update
    if @chair.update_attributes(chair_params)
      render json: @chair
    else
      render text: "error: #{@chair.errors.full_messages}", status: 400
    end
  end

  def index
    @chairs = current_project.chairs
    respond_with @chairs
  end

  def show
    render json: @chair
  end

  def destroy
    if @chair.destroy()
      render({destroyed: true}.to_json)
    else
      render text: "error: #{@chair.errors.full_messages}", status: 400
    end
  end

  private

  def chair_params
    params.require(:chair).permit(:x, :i)
  end

  def set_chair
    @chair = Chair.find(params[:id])
  end
end
