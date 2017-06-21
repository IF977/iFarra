class InvitesController < ApplicationController
	
	def create
		@evento = Evento.find(params[:invite][:attendee_event_id])
		current_user.attend!(@evento)
		redirect_to @evento
	end

	def destroy
		@evento = Invite.find(params[:id]).attendee_event
		current_user.cancel!(@evento)
		redirect_to @evento
	end
end