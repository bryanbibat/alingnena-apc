# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :set_locale

  private 
    def set_locale 
      I18n.locale = params[:locale] || session[:locale] 
      session[:locale] = params[:locale] if params.has_key? :locale
    end
  
end
