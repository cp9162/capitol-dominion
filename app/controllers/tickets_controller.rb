class TicketsController < ApplicationController
	before_action :authenticate_user!
	def new
		
	end

	def index
		@tickets = Ticket.where(:user_id => current_user.id)
	end

	def create
  		@ticket = Ticket.new(ticket_params)
  		@ticket.user_id = current_user.id
 
  		@ticket.save
  		redirect_to @ticket
	end

	def show
  		@ticket = Ticket.find(params[:id])
	end
 
	private
  	def ticket_params
    	params.require(:ticket).permit(:title, :description)
  	end
end


# tie users to tickets