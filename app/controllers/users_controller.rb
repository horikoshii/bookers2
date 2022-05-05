class UsersController < ApplicationController
  
  def top
  end
  
  def show
    @user=User
    @books=@user.books
  end

  def edit
  end
end
