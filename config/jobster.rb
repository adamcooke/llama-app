require_relative 'environment'

# Jobster::Worker.queues << :web_hooks
# Jobster::Worker.queues << :mail_processing

Jobster::Worker.register_error_handler do |exception, job|
  # Send exceptions from the worker to sentry
  Raven.capture_exception(exception, :extra => {:job_id => job.id})
end
