class Evento < ActiveRecord::Base
  belongs_to :user
  has_many :comentario
  
  has_many :attendees, :through => :invites
  has_many :invites, :foreign_key => :attendee_event_id
  
  has_attached_file :image, styles: { large: "600x600>", medium: "366x414>", thumb: "152x152#" }, :default_url => "Sem_foto"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  def self.find_by_user_id(current_user_id)
    @eventos = Evento.where(user_id: current_user_id)
  end

  validates :nome, presence: true
  validates :descricao, presence: true
  validates :inicio, presence: true
  validates :fim, presence: true
  validates :nome_local, presence: true
  validates :endereco, presence: true
   
  geocoded_by :endereco
  after_validation :geocode 
end