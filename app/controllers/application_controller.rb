require 'authie/session'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from Authie::Session::InactiveSession, :with => :auth_session_error
  rescue_from Authie::Session::ExpiredSession, :with => :auth_session_error
  rescue_from Authie::Session::BrowserMismatch, :with => :auth_session_error

  private

  def auth_session_error
    # TODO: update this path to be appropriate for this application
    redirect_to root_path
  end

  def page_title
    @page_title ||= ['LlamaApp']
  end
  helper_method :page_title

end
