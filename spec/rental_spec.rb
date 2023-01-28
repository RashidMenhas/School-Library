require_relative '../rental'
require_relative '../book'
require_relative '../person'
describe Rental do
  before :each do
    @book1 = Book.new('Game of Thrones', 'George Martin')
    @book2 = Book.new('The Songs of Achilles', 'Madelaine Miller')
    @person1 = Person.new(39, name: 'Obi Wan Kenobi')
    @person2 = Person.new(21, name: 'Master Windu')
    @rental1 = Rental.new('2022/11/09', @person1, @book1)
    @rental2 = Rental.new(Time.now, @person1, @book2)
  end
end