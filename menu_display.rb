class MenuDisplay
  attr_reader :options

  def initialize
    @options = [
      '1 - List all books',
      '2 - List all people',
      '3 - Create a person',
      '4 - Create a book',
      '5 - Create a rental',
      '6 - List all rentals for a given person (id)',
      '7 - Exit App'
    ]
  end

  def menu
    puts "\nPlease choose an option by entering a number:"

    puts @options
  end
end
