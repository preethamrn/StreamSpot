# app/channels/decisionstream_channel.rb

class DecisionstreamChannel < ApplicationCable::Channel  
	def subscribed
		stream_from 'decisionstream'
	end
end  