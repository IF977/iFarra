class ComentariosController < ApplicationController
  def create
    @evento = Evento.find(params[:evento_id])
    @comentario = @evento.comentario.create(params[:comentario].permit(:body, :user_email))
    if @comentario.errors.messages != {}
      flash[:notice] = 'Comentário não pode ser vazio'
    end
    redirect_to evento_path(@evento)
  end
  
  
  def destroy
    @evento = Evento.find(params[:evento_id])
    @comentario = @evento.comentario.find(params[:id])
    @comentario.destroy
    redirect_to evento_path(@evento)
  end
end