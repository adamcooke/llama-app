module AjaxSubmissions

  def render_form_errors(action_name, object)
    respond_to do |wants|
      wants.html { render action_name }
      wants.json { render :json => {:form_errors => object.errors.full_messages}, :status => 422 }
    end
  end

  def flash_now(type, message, options = {})
    respond_to do |wants|
      wants.html do
        if options[:fallback]
          flash[type] = message
          redirect_to options[:fallback]
        else
          flash.now[type] = message
          render options[:render_action] if options[:render_action]
        end
      end
      wants.json { render :json => {:flash => {type => message}} }
    end
  end

  def redirect_to_with_json(url, flash_messages = {})
    if url.is_a?(Array) && url[0] == :return_to
      url = url_with_return_to(url[1])
    else
      url = url_for(url)
    end

    flash_messages.each do |key, value|
      flash[key] = value
    end
    respond_to do |wants|
      wants.html { redirect_to url }
      wants.json { render :json => {:redirect_to => url} }
    end
  end

end
