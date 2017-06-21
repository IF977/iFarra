class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :evento
  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  
  has_many :invites, :foreign_key => :attendee_id
	has_many :attendee_events_id, :foreign_key => :evento_id
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end
  
  def attending?(evento)
    evento.attendees.include?(self)
  end

  def attend!(evento)
    self.invites.create!(attendee_event_id: evento.id)
  end

  def cancel!(evento)
    self.invites.find_by!(attendee_event_id: evento.id).destroy
  end
  
end
