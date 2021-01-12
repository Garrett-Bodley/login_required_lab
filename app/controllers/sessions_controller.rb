class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name].blank?
      redirect_to root_path, alert: "You must provide a username!"
    else
      session[:name] = params[:name]
      redirect_to hello_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
