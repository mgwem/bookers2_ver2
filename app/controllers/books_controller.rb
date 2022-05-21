class BooksController < ApplicationController
  def index
    @user = current_user
    @book_new = Book.new
  end

  def show
  end

  def edit
  end
end
