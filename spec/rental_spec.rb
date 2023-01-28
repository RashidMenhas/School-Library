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
  context 'When creating a new Rental' do
    it 'should have the following attributes (date, person, book)' do
      expect(@rental1.date).to eql '2022/11/09'
      expect(@rental1.person).to be_instance_of Person
      expect(@rental1.book).to be_instance_of Book
    end
    it 'should be an instance of the class Rental' do
      expect(@rental1).to be_instance_of Rental
      expect(@rental2).to be_instance_of Rental
    end
  end
  context 'Person and Book rentals object should not be empty' do
    it '@person.rentals should be of size 2' do
      expect(@person1.rentals.count).to eq 2
    end
    it '@book1.rentals should be of size 1' do
      expect(@book1.rentals.count).to eq 1
    end
    it '@book2.rentals should be of size 1' do
      expect(@book2.rentals.count).to eq 1
    end
    it '@book1.rentals should be of size 2 after adding new rental' do
      Rental.new(Time.now, @person2, @book1)
      expect(@book1.rentals.count).to eq 2
    end
  end
end
