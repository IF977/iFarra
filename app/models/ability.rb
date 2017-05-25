class Ability
  include CanCan::Ability

  def initialize(user)
    
    can :update, Evento do |evento|
      evento.user == user
    end
    
    can :destroy, Evento do |evento|
      evento.user == user
    end
    
    can :create, :all
    can :read, :all
    
  end
end
