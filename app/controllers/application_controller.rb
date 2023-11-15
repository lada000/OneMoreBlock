class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    if current_user.nil?
      redirect_to new_user_session_path, alert: "Пожалуйста, войдите в систему для доступа к этой странице."
    else
      redirect_to root_path, alert: exception.message
    end
  end
end
