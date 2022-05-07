class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    @books = Book.find(params[:id])
  end
  
  def new
    @books = Book.new
  end
  
  def create
    @books = Book.new(books_params)
    @books.user_id = current_user.id
    @books.save
    redirect_to books_path
  end
  
  private
  
  def books_params
    params.require(:book).permit(:title, :body,:image)
  end
end
