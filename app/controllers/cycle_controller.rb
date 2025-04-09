class CycleController < ApplicationController

  allow_unauthenticated_access
  def index
    @data = %w(Germany United\ Kingdom France Italy Russia Spain)
  end

end
