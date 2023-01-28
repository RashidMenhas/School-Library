require_relative '../book'
require_relative '../rental'
require_relative '../person'

describe Book do
  before :each do
    @book1 = Book.new('java', 'Sami Ullah')
    @book2 = Book.new('java', 'Sami Ullah')
    @person = Person.new(88, name: 'Rashid menhas')
  end

  context 'When creating a new book' do
    it 'should have the following attributes (title, author, and rentals)' do
      expect(@book1.title).to eql 'java'
      expect(@book1.author).to eql 'Sami Ullah'
      expect(@book1.rentals.count).to eq(0)
    end
    it 'should be an instance of the class Book' do
      expect(@book1).to be_instance_of Book
      expect(@book1).to be_instance_of Book
    end
  end

  context 'when adding a rental for a Book' do
    it 'can add a rental' do
      expect(@book1).to respond_to(:add_rental)
    end
    it 'has it\'s rentals array length increased' do
      expect(@book1.rentals.count).to eq(0)
      Rental.new(Time.now, @person, @book1)
      expect(@book1.rentals.count).to eq(1)
    end
    it 'can add a new rental with add_rental method' do
      expect(@book2.rentals.count).to eq(0)
      rental = Rental.new(Time.new, @person, @book1)
      @book2.add_rental(rental)
      expect(@book2.rentals.count).to eq(1)
    end
  end
end
