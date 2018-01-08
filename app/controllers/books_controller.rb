class BooksController < ApplicationController

  def index
    @books = policy_scope(Book)
  end

  def show
    @book = Book.find(params[:id])
    authorize @book
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    authorize @book
    @book.user = current_user
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :user_id, :start_date, :end_date, :status, :rating, :cover, :genre, :comment)
  end
end
