class EventosController < ApplicationController
    before_action :find_evento, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource
    
    def index
      unless params[:meus_eventos].nil?
        flash[:notice] = 'Mostrando seus eventos'
        @eventos = Evento.find_by_user_id(current_user.id)
      else
        flash[:notice] = 'Mostrando todos eventos'
        @eventos = Evento.all
      end
      @hash = Gmaps4rails.build_markers(@eventos) do |evento, marker|
        marker.lat evento.latitude
        marker.lng evento.longitude
        marker.infowindow evento.nome_local
      end
    end
    
    def new
      @evento = Evento.new
    end
    
    def show
    end
    
    def create
      @evento = Evento.new(evento_params)
      @evento.user_id = current_user.id
      if @evento.save
          flash[:notice] = 'Evento criado com sucesso'
          redirect_to @evento
      else
          flash[:notice] = 'Preencha todos os campos'
          render 'new'
      end
    end
    
    def edit
    end
    
    def update
        if @evento.update(evento_params)
            flash[:notice] = 'Evento editado com sucesso'
            redirect_to @evento
        else
            flash[:notice] = 'Preencha todos os campos'
            render 'edit'
        end
    end
    
    def destroy
        @evento.destroy
        redirect_to eventos_path
    end
    
    private
    
    def find_evento
        @evento = Evento.find(params[:id])
    end
    
    def evento_params
       params.require(:evento).permit(:latitude, :longitude, :image, :nome, :inicio, :fim, :descricao, :endereco, :nome_local, :user_id)
    end
end