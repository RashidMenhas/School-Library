require_relative '../person'
require_relative '../book'
require_relative '../rental'
describe Person do
  before :each do
    @person1 = Person.new(12, name: 'Little Smith', parent_permission: false)
    @person2 = Person.new(500, name: 'Elrond HalfElf')
    @book1 = Book.new('Game of Thrones', 'George Martin')
    @book2 = Book.new('The Songs of Achilles', 'Madelaine Miller')
    @book3 = Book.new('The Lord of the Rings', 'Tolkien')
    @rental = Rental.new(Time.now, @person1, @book1)
  end
end