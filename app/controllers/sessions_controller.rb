class SessionsController < ApplicationController
  def index
    if !session[:name] || session[:name] == ""
    render '/sessions/login'
    else
    render '/sessions/index'
    end
  end

  def new
    render '/sessions/login'
  end

  def create
    if !params[:name] || params[:name] == ""
        redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to'/'
    end
  end

  def destroy
    session[:name] = nil
        
    redirect_to '/sessions/login'
  end


end
