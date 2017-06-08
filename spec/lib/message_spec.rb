require 'rails_helper'
require 'Message'

describe Message do
	caracteres_permitidos = /[\S\s]/
	num_permitidos = /[0-9]/
	
	message_instance = Message.new
	
	it 'is a instance of Message?' do
		expect(message_instance).to be_an_instance_of(Message)
	end
	
	it 'has an valid body?' do
		expect(message_instance.body).not_to be_empty
		expect(message_instance.body).to match(caracteres_permitidos)
	end
	
	it 'has an valid conversation_id?' do
		expect(message_instance.conversation).not_to be_empty
        expect(message_instance.conversation).to match (num_permitidos)
	end
	
	it 'has an valid user_id?' do
		expect(message_instance.user_id).not_to be_empty
        expect(message_instance.user_id).to match (num_permitidos)
	end
end