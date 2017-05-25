class Evento
    attr_accessor :nome, :inicio, :fim, :descricao, :nome_local, :endereco, :user_id
    def initialize
        @nome = 'Festa'
        @inicio = '2017-05-24 02:18:00'
        @fim = '2017-05-24 02:40:00'
        @descricao = 'Aniversario'
        @nome_local = 'Casa do aniversariante'
        @endereco = 'Rua do aniversariante'
        @user_id = '4'
    end
end