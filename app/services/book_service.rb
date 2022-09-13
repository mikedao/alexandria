class BookService
  def self.book(isbn)
    response = conn.get("/books/v1/volumes?q=isbn:#{isbn}")
    JSON.parse(response.body, symbolize_names: true)[:items].first
  end

  def self.conn
    Faraday.new(url: "https://www.googleapis.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end