# app/channels/votepool_channel.rb

class VotepoolChannel < ApplicationCable::Channel  
	def subscribed
		stream_from 'votepool'
		puts "vote caught from pool"
	end
end  