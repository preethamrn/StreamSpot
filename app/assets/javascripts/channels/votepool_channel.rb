# app/channels/votepool_channel.rb

class VotepoolChannel < ApplicationCable::Channel  
	def subscribed
		stream_from 'votepool'
	end
end  