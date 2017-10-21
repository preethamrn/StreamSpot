class VotesController < ApplicationController
	def create
		@vote = Vote.new
		vote = vote.new(vote_params)
		vote.user = current_user
		if vote.save
			# do some stuff
			ActionCable.server.broadcast 'votepool',
				value: vote.value,
				user: vote.user.twitch_username
			head :ok
		end
	end

	private

	def message_params
		params.require(:value)#.permit(:content, :chatroom_id)
	end
end
