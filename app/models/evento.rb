class Evento < ActiveRecord::Base
  belongs_to :user
  
  def self.find_by_user_id(current_user_id)
    @eventos = Evento.where(user_id: current_user_id)
  end

   validates :nome, presence: true
   validates :descricao, presence: true
   validates :inicio, presence: true
   validates :fim, presence: true
   validates :nome_local, presence: true
   validates :endereco, presence: true

end