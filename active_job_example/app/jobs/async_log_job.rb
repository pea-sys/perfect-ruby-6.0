class AsyncLogJob < ApplicationJob
  queue_as :async_log

  def perform(message: "hello")
    # Do something later
    AsyncLog.create!(message: message)
    retry_on StandardError, wait: 5.seconds, attempts: 3
  end
end
