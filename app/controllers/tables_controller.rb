class TablesController < ApplicationController

  before_action :set_table, only: [:update, :show, :destroy]
  respond_to :json

  def create
    @table = current_project.tables.new(table_params)
    if @table.save
      render json: @table
    else
      render text: "error: #{@table.errors.full_messages}", status: 400
    end
  end

  def update
    if @table.update_attributes(table_params)
      render json: @table
    else
      render text: "error: #{@table.errors.full_messages}", status: 400
    end
  end

  def index
    @tables = current_project.tables
    respond_with @tables
  end

  def show
    render json: @table
  end

  def destroy
    if @table.destroy()
      render({destroyed: true}.to_json)
    else
      render text: "error: #{@table.errors.full_messages}", status: 400
    end
  end

  private

  def table_params
    params.require(:table).permit(:x, :y)
  end

  def set_table
    @table = current_project.tables.find(params[:id])
  end
end
