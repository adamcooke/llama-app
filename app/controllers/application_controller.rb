class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def page_title
    @page_title ||= ['LlamaApp']
  end
  helper_method :page_title

end
