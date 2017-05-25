require 'rails_helper'
require 'Evento'

describe Evento do
    regex_letras = /[a-zA-Z]/
    regex_numeros = /[0-9]/
    
    evento_instance = Evento.new
    
    it 'is a instance of a Evento?' do
        expect(evento_instance).to be_an_instance_of(Evento)
    end
    
    it 'has an valid nome, descricao and endereco?' do
        expect(evento_instance.nome).not_to be_empty
        expect(evento_instance.nome).to be_an_instance_of(String)
        expect(evento_instance.nome).to match(regex_letras) and match(regex_numeros)
        
        expect(evento_instance.descricao).not_to be_empty
        expect(evento_instance.descricao).to be_an_instance_of(String)
        expect(evento_instance.descricao).to match(regex_letras) and match(regex_numeros)
        
        expect(evento_instance.endereco).not_to be_empty
        expect(evento_instance.endereco).to be_an_instance_of(String)
        expect(evento_instance.endereco).to match(regex_letras) and match(regex_numeros)
    end
    
    it 'has an valid user_id?' do
        expect(evento_instance.user_id).not_to be_empty
        expect(evento_instance.user_id).to match(regex_numeros)
        expect(evento_instance.user_id).not_to match(regex_letras)
    end
    
    it 'has an valid date for inicio and fim' do
        datetime_array = evento_instance.inicio.split(' ')
        data = datetime_array[0].split('-')
        ano = data[0].to_i
        mes = data[1].to_i
        dia = data[2].to_i

        if mes == 2 ;
            expect(dia).to be_between(1,28)
        end
        if mes ==1 or mes ==3 or mes==5 or mes==7 or mes==8 or mes==10 or mes==12;
            expect(dia).to be_between(1,31)
        end
        if mes ==4 or mes ==6 or mes==9 or mes==11;
            expect(dia).to be_between(1,30)
        end
        expect(mes).to be_between(1,12)
        expect(dia).to be_between(1,31)
        expect(ano).to be > 1900
    end
    
    it 'has a valid time for inicio and fim' do
        datetime_array = evento_instance.inicio.split(' ')
        data = datetime_array[1].split(':')
        hora = data[0].to_i
        minuto = data[1].to_i
        segundo = data[2].to_i
        if hora >= 0 and minuto >= 0 and segundo >= 0;
            expect(hora).to be_between(0,23)
            expect(minuto).to be_between(0,59)
            expect(segundo).to be_between(0,59)
        end
    end 
    
end
