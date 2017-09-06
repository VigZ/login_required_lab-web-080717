class SecretsController < ApplicationController
  def show
    if !session[:name]
      redirect_to '/login'
    else
      render '/secrets/show'
    end

  end
end
