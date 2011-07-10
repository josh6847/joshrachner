class HomeController < ApplicationController
  require 'rss/1.0'
  require 'rss/2.0'
  require 'nokogiri'
  require 'open-uri'
  
  def index
    @index = "selected"
    source = "http://blog.joshrachner.com/feed/" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    @rss = RSS::Parser.parse(content, false)
    @page_title = "Home"
  end

  def technology
    @technology = "selected"
    @page_title = "Technology"
  end

  def experience
    @experience = "selected"
    @experiences = Experience.all(:order => 'position DESC')
    @page_title = "Experience"
    render :layout => 'experience'
  end

  def blog
    @blog = "selected"
    source = "http://blog.joshrachner.com/feed/" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    @rss = RSS::Parser.parse(content, false)
  end
  
  def method_missing(*args)
    redirect_to :action => "index"
  end

end
