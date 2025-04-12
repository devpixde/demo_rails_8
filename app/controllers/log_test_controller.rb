class LogTestController < ApplicationController
  allow_unauthenticated_access
  before_action :resume_session
  def index
  end

  def log
    Rails.logger.info 'Dies ist ein logging test 123!'
    # do not render a view, just respond with 200
    head :ok
  end
end
