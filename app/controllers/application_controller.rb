# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  layout 'application'
  helper :all # include all helpers, all the time
  before_filter :check_domain
  
  def check_domain
    if host.match(/dev|test/)
      authenticate
    end
  end
  
  # basic authentication
  def authenticate
    authenticate_or_request_with_http_basic('this is a secret area') do |username, password|
      htpasswd = {'abt' => 'texas'}
      htpasswd[username] == password
    end
  end
end
