class InquiriesController < ApplicationController
  before_filter :set_mode
  
  def set_mode
    @contact = "selected"
  end
  
  def index
    @inquiry = Inquiry.new
    render :action => 'new'
  end

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.save
      flash[:notice] = "Thank you for submitting your inquiry."
      @inquiry = Inquiry.new
      render :action => 'new'
    else
      flash[:notice] = ""
      render :action => 'new'
    end
    
  end

end
