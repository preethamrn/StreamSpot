class VotesController < ApplicationController
	def create
		message = Message.new(message_params)
		message.user = current_user
		if message.save
			# do some stuff
			ActionCable.server.broadcast 'votepool',
				message: message.value,
				user: message.user.twitch_username
			head :ok
		else 
			redirect_to chatrooms_path
		end
	end

	private

	def message_params
		params.require(:value)#.permit(:content, :chatroom_id)
	end
end
