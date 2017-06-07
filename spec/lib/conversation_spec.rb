require 'rails_helper'
require 'Conversation'

describe Conversation do
	num_permitidos = /[0-9]/
	
	conversation_instance = Conversation.new
	
	it 'is a instance of Conversation?' do
		expect(conversation_instance).to be_an_instance_of(Conversation)
	end
	
	it 'has an valid sender_id?' do
		expect(conversation_instance.sender_id).not_to be_empty
        expect(conversation_instance.sender_id).to match (num_permitidos)
	end
	
	it 'has an valid recipient_id?' do
		expect(conversation_instance.recipient_id).not_to be_empty
        expect(conversation_instance.recipient_id).to match (num_permitidos)
	end
end