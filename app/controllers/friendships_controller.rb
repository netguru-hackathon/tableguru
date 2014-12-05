class FriendshipsController < ApplicationController

  before_action :set_table, only: [:update, :show, :destroy]
  respond_to :json

  def create
    @friendship = current_project.friendships.new(friendship_params)
    if @friendship.save
      render json: @friendship
    else
      render text: "error: #{@friendship.errors.full_messages}", status: 400
    end
  end

  def update
    if @friendship.update_attributes(friendship_params)
      render json: @friendship
    else
      render text: "error: #{@friendship.errors.full_messages}", status: 400
    end
  end

  def index
    @friendships = current_project.friendships
    respond_with @friendships
  end

  def show
    render json: @friendship
  end

  def destroy
    if @friendship.destroy()
      render({destroyed: true}.to_json)
    else
      render text: "error: #{@friendship.errors.full_messages}", status: 400
    end
  end

  private

  def friendship_params
    params.require(:friendship).permit(:guest1, :guest2, :strength)
  end

  def set_friendship
    @friendship = Friendships.find(params[:id])
  end
end
