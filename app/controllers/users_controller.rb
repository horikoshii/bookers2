class UsersController < ApplicationController

  def top
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
    @books = @user.books
    @book = Book.new
  end

  def edit
  end
end
