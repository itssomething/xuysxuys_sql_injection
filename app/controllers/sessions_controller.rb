class SessionsController < ApplicationController
  before_action :validate_params, only: :create

  def new
  end

  def create
    @user = User.find_by_sql("select users.* from users where email = '" + params[:email] + "' and password = '" + params[:password] + "' limit 1").first

    if @user.present?
      session[:user_id] = @user.id
      redirect_to home_index_path
    else
      @error = true
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end

  private

  def validate_params
    if params[:email].blank? || params[:password].blank?
      @error = true
      render :new
    end
  end
end
