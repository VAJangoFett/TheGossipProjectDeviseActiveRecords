class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	
	before_action :add_username, if: :devise_controller?

	def add_username
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
	end
end
