class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_parametros)

    if @book.save
      flash.alert = "Livro #{@book.name} foi adicionado com sucesso!"
    else
      flash.alert = "Falha ao adicionar novo livro!"
    end

    redirect_to books_path
  end


  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update!(book_parametros)
      flash.alert = "As informações do livro #{@book.name} foram atualizadas"
    else
      flash.alert = "Não foi possível atualizar o livro"
    end
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:id])

    if @book.destroy!
      flash.alert = "Livro excluído com sucesso!"
    else
      flash.alert = "Falha ao excluir livro. Tente Novamente mais tarde"
    end

    redirect_to books_path
  end



  private
  def book_parametros
    params.require(:book).permit(:name, :year_of_publishing, :author_id)
  end
end
