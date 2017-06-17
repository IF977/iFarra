require 'rails_helper'
require 'User'

describe User do
    regex_numeros = /[0-9]/
    caracteres_permitidos = /[a-zA-Z0-9]/
    email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    
    user_instance = User.new
    
    it "is a instance of a User?" do
        expect(user_instance).to be_an_instance_of(User)
    end
    
    it "has an valid email?" do
        expect(user_instance.email).not_to be_empty
        expect(user_instance.email).to match(email_valido)
        expect(user_instance.email).to be_an_instance_of(String)
        expect(user_instance.email).to match (caracteres_permitidos)
    end
    
    it "has an valid password?" do
        expect(user_instance.password).not_to be_empty
        expect(user_instance.password).to match (caracteres_permitidos)
    end
    
    it "has an valid provider?" do
       expect(user_instance.provider).not_to be_empty
       expect(user_instance.provider).to match (caracteres_permitidos)
    end
    
    it "has an valid uid?" do
        expect(user_instance.uid).not_to be_empty
        expect(user_instance.uid).to match(regex_numeros)
    end
end
