require 'json'
require 'fileutils'

class SaveData
  def check_file_exists(filename)
    FileUtils.mkdir_p('./data')
    FileUtils.touch('./data/people.json') if !File.exist?('./data/people.json') && filename == 'people'
    FileUtils.touch('./data/books.json') if !File.exist?('./data/books.json') && filename == 'books'
    FileUtils.touch('./data/rentals.json') if !File.exist?('./data/rentals.json') && filename == 'rentals'
  end
end
