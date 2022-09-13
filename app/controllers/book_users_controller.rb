class BookUsersController < ApplicationController
  def create
      data = BookService.book(params[:isbn])
      current_user.books << Book.where( 
        title: data[:volumeInfo][:title],
        authors: data[:volumeInfo][:authors].join(", "),
        isbn: data[:volumeInfo][:industryIdentifiers][1][:identifier],
        description: data[:volumeInfo][:description],
        published_date: data[:volumeInfo][:publishedDate],
        thumbnail: data[:volumeInfo][:imageLinks][:thumbnail]
        )
      .first_or_create

    redirect_to root_path
  end
end