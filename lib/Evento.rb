class Evento
    attr_accessor :nome, :inicio, :fim, :descricao, :nome_local, :endereco, :user_id, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
    def initialize
        @nome = 'Festa'
        @inicio = '2017-05-24 02:18:00'
        @fim = '2017-05-24 02:40:00'
        @descricao = 'Aniversario'
        @nome_local = 'Casa do aniversariante'
        @endereco = 'Rua do aniversariante'
        @user_id = '4'
		@image_file_name = 'vign8.jpg'
		@image_content_type = 'image/jpeg'
		@image_file_size = 28990
		@image_updated_at = '2017-05-28 03:35:42'
    end
end