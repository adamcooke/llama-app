class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include AjaxSubmissions

  private

  def page_title
    @page_title ||= ['LlamaApp']
  end
  helper_method :page_title

end
