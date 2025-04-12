class CycleController < ApplicationController

  allow_unauthenticated_access
  before_action :resume_session
  def index
    @data = %w(Germany United\ Kingdom France Italy Russia Spain)
  end

end
