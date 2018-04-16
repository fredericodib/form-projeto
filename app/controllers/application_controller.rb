class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	
	add_flash_types :danger, :success

  	protected
  	def after_sign_in_path(resource)
  		backoffice_path
  	end
end
