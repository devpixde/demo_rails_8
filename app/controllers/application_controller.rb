class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def current_user
    Current.session&.user
  end

  rescue_from CanCan::AccessDenied do |exception|
    exception.default_message = "Access denied."
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to root_path, alert: exception.message }
    end
  end

  include ActiveStorage::SetCurrent
end
