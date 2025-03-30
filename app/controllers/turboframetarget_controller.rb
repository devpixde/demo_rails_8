class TurboframetargetController < ApplicationController
  def index
    @items = []
    if params[:items]
      @items = params[:items]
    end
  end
end
