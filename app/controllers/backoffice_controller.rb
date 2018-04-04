class BackofficeController < ApplicationController
	
	before_action :authenticate_admin!

	def index
		@humans = Human.all
		@humans = Human.page(params[:page]).per(2)
	end
	
end
