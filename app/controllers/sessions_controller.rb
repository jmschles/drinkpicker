class SessionsController < ApplicationController

  def create
    @admin = Admin.find_by_username(params[:admin][:username])
    if @admin && @admin.verify_password(params[:admin][:password])
      login(@admin)
      redirect_to root_url
    else
      @admin = Admin.new(params[:admin])
      render :new
    end
  end

  def destroy
    if current_admin
      logout
      redirect_to root_url
    end
  end

  def new
    @admin = Admin.new
  end

end
