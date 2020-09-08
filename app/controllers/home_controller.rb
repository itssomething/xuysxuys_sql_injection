class HomeController < ApplicationController
  before_action :user_logged_in?, only: :index

  def index
  end

  private

  def user_logged_in?
    @user = User.find_by id: session[:user_id]

    return if @user
    redirect_to new_session_path
  end
end
