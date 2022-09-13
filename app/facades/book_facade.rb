class BookFacade
  def initialize(isbn)
    @isbn = isbn
  end

  def book
    service.book(@isbn) 
  end

  def service
    @_service ||= BookService.new
  end
end