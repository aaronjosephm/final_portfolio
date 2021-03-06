class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :email]

  def home
  end

  def email
    name = params[:name]
    message = params[:message]
    email = params[:email]
    if UserMailer.test(email, message, name).deliver_now
      UserMailer.notify.deliver_now
      flash[:alert] = "Your message has been sent! We will get back to you shortly!"
      redirect_to root_path
    else
      flash[:alert] = "Please fill out required fields!"
      redirect_to root_path
    end
  end
end
