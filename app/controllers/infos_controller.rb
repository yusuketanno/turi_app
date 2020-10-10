class InfosController < ApplicationController

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

  private

  def info_params
    params.require(:info).permit(:image, :fish_name, :text, :tackle, :fish_num)
    .merge(user_id: current_user.id)
  end

end
