class BooksController < ApplicationController
  def index
    @user = current_user
    @book_new = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book), notice: "You have created book successfully."
    else
      @books = Book.all
      render :index
    end
  end

  def destroy
  end

  def show
    @book_new = Book.new
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
