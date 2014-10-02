class ApplicationController < ActionController::Base
	  before_filter :require_login

	  private
	  def not_authenticated
	  	redirect_to login_path, alert: "Por favor Inicie Sesión primero"
	  end

  protect_from_forgery with: :exception
end
