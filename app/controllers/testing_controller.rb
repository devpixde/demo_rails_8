class TestingController < ApplicationController
  allow_unauthenticated_access
  before_action :resume_session
  def index
  end
end
