class StaticPagesController < ApplicationController
  def home
    if logged_in?
      redirect_to current_user
    else
      render 'static_pages/home'
    end
  end

  def about
  end
  
  def contactus
  end
  
  def faq
  end
  
  def blog
  end
end
