class SleepJob < Jobster::Job

  def perform
    sleep 10
  end

end
