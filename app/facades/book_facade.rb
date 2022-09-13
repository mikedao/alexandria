class BookFacade
  def initialize(isbn)
    @isbn = isbn
  end

  def book
    data = service.book(@isbn) 
    Book.where( 
      title: data[:volumeInfo][:title],
      authors: data[:volumeInfo][:authors].join(", "),
      isbn: data[:volumeInfo][:industryIdentifiers][1][:identifier],
      description: data[:volumeInfo][:description],
      published_date: data[:volumeInfo][:publishedDate],
      thumbnail: data[:volumeInfo][:imageLinks][:thumbnail]
      )
    .first_or_create
  end

  def service
    @_service ||= BookService.new
  end
end