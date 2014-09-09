class TicketsController < ApplicationController
	def new
		
	end

	def create
		render plain: params[:ticket].inspect
	end
end
