require 'rails_helper'
require 'Comentario'

describe Comentario do
	num_permitidos = /[0-9]/
	caracteres_permitidos = /[a-zA-Z0-9]/
	email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	comentario_instance = Comentario.new
	
	it 'is a instance of Comentario?' do
		expect(comentario_instance).to be_an_instance_of(Comentario)
	end
	
	it 'has an valid body?' do
		expect(comentario_instance.body).not_to be_empty
		expect(comentario_instance.body).to match (caracteres_permitidos)
	end
	
	it 'has an valid user_email?' do
		expect(comentario_instance.user_email).not_to be_empty
        expect(comentario_instance.user_email).to match (email_valido)
	end
	
	it 'has an valid evento_id?' do
	    expect(comentario_instance.evento_id).not_to be_empty
	    expect(comentario_instance.evento_id).to match (num_permitidos)
	end
end