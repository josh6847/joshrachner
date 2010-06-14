class HomeController < ApplicationController
  def index
    @index = "selected"
  end

  def resume
    @resume = "selected"
  end

  def experience
    @experience = "selected"
  end

  def blog
    @blog = "selected"
    redirect_to "http://blog.joshrachner.com"
  end
  
  def method_missing(*args)
    redirect_to :action => "index"
  end

end
