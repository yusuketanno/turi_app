class InfosController < ApplicationController

  before_action :set_info, only: [:show]

  def index
    @infos = Info.all.order("created_at DESC")
  end

  def new
    @info = Info.new
    # unless user_signed_in?
    #   redirect_to new_user_session_path
    # end
  end

  def create
    @info = Info.new(info_params)
    if @info.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def info_params
    params.require(:info).permit(:image, :fish_name, :text, :tackle, :bait)
    .merge(user_id: current_user.id)
  end

  def set_info
    @info = Info.find(params[:id])
  end

end
