require 'json'

class ReadData
  def read_books
    books = []
    return books unless File.exist?('./data/books.json')

    file = File.open('./data/books.json')
    data = JSON.parse(file.read)
    data.each do |book|
      books << Book.new(book['title'], book['author'])
    end
    file.close
    books
  end