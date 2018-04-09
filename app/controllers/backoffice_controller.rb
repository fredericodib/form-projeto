class BackofficeController < ApplicationController
	
	before_action :authenticate_admin!

	def index
		if (params[:search] && params[:search] != "")
			@humans = Human.where(country: params[:search]).page(params[:page]).per(60)
		else
			@humans = Human.page(params[:page]).per(60)
		end
	end	
end
