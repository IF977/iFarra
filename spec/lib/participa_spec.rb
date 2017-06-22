require 'rails_helper'
require 'Participa'

describe Participa do
    regex_numeros = /[0-9]/
	
	
	participacao_instance = Participa.new
	
	it 'is a instance of a Participa?' do
		expect(participacao_instance).to be_an_instance_of(Participa)
	end
	
	
	it 'has an valid attendee_id?' do
		expect(participacao_instance.attendee_id).not_to be_empty
        expect(participacao_instance.attendee_id).to be_an_instance_of(String)
        expect(participacao_instance.attendee_id).to match(regex_numeros)
	end
	
	
	it 'has an valid attendee_event_id?' do
		expect(participacao_instance.attendee_event_id).not_to be_empty
        expect(participacao_instance.attendee_event_id).to be_an_instance_of(String)
        expect(participacao_instance.attendee_event_id).to match(regex_numeros)
	end
	
end