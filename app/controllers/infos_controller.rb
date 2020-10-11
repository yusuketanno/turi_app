class InfosController < ApplicationController

  before_action :set_info, only: [:show, :edit, :update, :destroy]
  before_action :search_info, only: [:search1, :search2]

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

  def edit
  end

  def update
    if @info.update(info_params)
      redirect_to info_path(@info)
    else
      render :edit
    end
  end

  def destroy
    unless @info.destroy
      redirect_to info_path
    else
      redirect_to infos_path
    end
  end

  def search1
  end

  def search2
    @info = @p.result
  end

  private

  def info_params
    params.require(:info).permit(:image, :fish_name, :text, :tackle, :bait)
    .merge(user_id: current_user.id)
  end

  def set_info
    @info = Info.find(params[:id])
  end

  def search_info
    @p = Info.ransack(params[:q])  # 検索オブジェクトを生成
  end


end
