class HomeController < ApplicationController
  def index
    @index = "selected"
  end

  def technology
    @technology = "selected"
  end

  def experience
    @experience = "selected"
    #render :layout => 'experience'
  end

  def blog
    @blog = "selected"
  end
  
  def method_missing(*args)
    redirect_to :action => "index"
  end

end
