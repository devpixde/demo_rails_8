class TurboframetargetController < ApplicationController
  allow_unauthenticated_access
  def index
    @items = []
    if params[:items]
      @items = params[:items]
    end
  end
end
