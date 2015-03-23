class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_page_title

  helper_method :show_message

  protected

  def set_page_title 
    @_page_title = ""
  end

  def set_message(message)
    flash[:message] = message
  end

  def show_message
    components = []
    message = flash[:message]
    if message.present?
      components << "<div class='message'>"
      components << message
      components << "</div>"
    end
    components.join( "" ).html_safe
  end

end

