class UsersController < ApplicationController

  def top
  end

  def index
  end

  def show
    @users = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end
end
