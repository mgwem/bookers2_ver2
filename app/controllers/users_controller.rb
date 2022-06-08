class UsersController < ApplicationController
  def index
    @book_new = Book.new
    @user = current_user
    @users = User.all
  end

  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @books= @user.books
  end

  def edit
  end
end
