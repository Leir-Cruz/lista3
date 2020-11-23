class AuthorsController < ApplicationController
  #index
  def index
    @authors = Author.all
  end

  #para mostrar cada autor em separado
  def show
    @author = Author.find(params[:id])
  end

  #create e new trabalham juntos, é como se o New preparasse para insirar as informações
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(authors_parametros)
    if @author.save
      flash.alert = "Autor #{@author.name} adicionado com sucesso!"
    else
      flash.alert = "Falha ao adicionar o autor!"
    end

    redirect_to authors_path
  end

  #edit e update trabalham juntos
  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update!(authors_parametros)
      flash.alert = "Informações de #{@author.name} foram alteradas com sucesso"
    else
      flash.alert = "Erro ao editar informações sobre o autor"
    end

    redirect_to authors_path
  end

  def destroy
    @author = Author.find(params[:id])

    if @author.destroy!
      flash.alert = "Os dados #{@author.name} foram excluídos com sucesso"
    else
      flash[:alert] = "Falha ao excluir"
    end

    redirect_to authors_path
  end

  private
  def authors_parametros
    params.require(:author).permit(:name, :year_of_birth, :nationality)
  end
end