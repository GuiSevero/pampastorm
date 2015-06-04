class SessionsController < ApplicationController
  def new
  end

  def create
  	user = params[:session][:user]
  	pass = params[:session][:password]
    # TODO(murillo): comparar com o admin cadastrado no banco
  	if user == "admin" && pass == "@dm1n"
      log_in user
      # TODO(murillo): redirect_to 
      render 'new'
    else
      render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to login_path
  end
end
