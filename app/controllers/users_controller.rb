class UsersController < ApplicationController
  
  def top
  end
  
  def index
    @user = User.new
  end
  
  def show
    @user=User
    @books=@user.books
  end

  def edit
  end
end
