class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.new
    @books = Book.find(params[:id])
    @user = current_user
  end

  def new
    @books = Book.new
  end

  def edit
    @books = Book.find(params[:id])
    @book = Book.new
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to book_path(book.id)
    else
      render :edit
    end
  end

  def create
    @books = Book.new(book_params)
    @books.user_id = current_user.id
    if @books.save
    redirect_to book_path(@books.id)
    else
      users = User.all
      render :index
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
