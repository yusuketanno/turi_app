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
  end

end
