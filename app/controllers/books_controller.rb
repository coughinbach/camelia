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
    authorize @project
    @book.owner = current_user
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private


end
