class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
    @books = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def create
    @books = Book.new(book_params)
    @books.user_id = current_user.id
    @books.save
    redirect_to book_path
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
