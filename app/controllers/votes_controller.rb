class VotesController < ApplicationController
	def create
		
		# vote = Vote.new(vote_params)
		# vote.user = current_user
		# if vote.save
			# do some stuff
			# ActionCable.server.broadcast 'votepool',
			# 	value: vote.value,
			# 	user: vote.user.twitch_username
			# head :ok
		# end
	end

	private

	def vote_params
		params.require(:vote).permit(:value, :user_id)
	end
end
