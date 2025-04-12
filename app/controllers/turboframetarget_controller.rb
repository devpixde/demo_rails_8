class TurboframetargetController < ApplicationController
  allow_unauthenticated_access
  before_action :resume_session
  def index
    @items = []
    if params[:items]
      @items = params[:items]
    end
  end
end
