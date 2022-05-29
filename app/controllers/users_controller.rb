class UsersController < ApplicationController
  def index
    @book_new = Book.new
  end

  def show
    @book_new = Book.new
  end

  def edit
  end
end
