class HomeController < ApplicationController
  def index
    @index = "selected"
  end

  def technology
    @technology = "selected"
  end

  def experience
    @experience = "selected"
  end
  
  def experience2
    @experience = "selected"
  end

  def blog
    @blog = "selected"
  end
  
  def method_missing(*args)
    redirect_to :action => "index"
  end

end
