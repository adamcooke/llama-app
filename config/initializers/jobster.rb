Jobster.configure do |c|
  c.exchange_name = 'llama_app-jobs'

  c.worker_error_handler do |exception, job|
    if defined?(Raven)
      Raven.capture_exception(exception, :extra => {:job_id => job.id})
    end
  end
end
