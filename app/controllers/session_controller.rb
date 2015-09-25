class SessionController < ApplicationController
  
  def new
  end

  def create
    buyer = Buyer.find_by :email => params[:email]
    if buyer.present? && buyer.authenticate(params[:password])
      session[:buyer_id] = buyer.id
      redirect_to root_path
    else
      redirect_to login_path, notice: 'Incorrect Email or Password.'
    end
  end

  def destroy
    session[:buyer_id] = nil
    redirect_to root_path
  end

end
