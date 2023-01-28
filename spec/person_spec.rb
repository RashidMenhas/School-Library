require_relative '../person'
require_relative '../book'
require_relative '../rental'
describe Person do
  before :each do
    @person1 = Person.new(12, name: 'Little Smith', parent_permission: false)
    @person2 = Person.new(500, name: 'Elrond HalfElf')
    @person3 = Person.new(55)
    @book1 = Book.new('Game of Thrones', 'George Martin')
    @book2 = Book.new('The Songs of Achilles', 'Madelaine Miller')
    @book3 = Book.new('The Lord of the Rings', 'Tolkien')
    @rental = Rental.new(Time.now, @person1, @book1)
  end
  context 'When creating a new Person' do
    it 'should have the following attributes (id, age, name, and parent_permission, rentals)' do
      expect(@person1.id).to be_between(1, 100).inclusive
      expect(@person1.age).to be_kind_of Integer
      expect(@person1.parent_permission).to be_kind_of FalseClass
      expect(@person1.age).to eq(12)
      expect(@person1.name).to eql('Little Smith')
    end
    it 'should be an instance of the class Person' do
      expect(@person1).to be_instance_of Person
    end
  end
  context 'When adding a rental for a Person' do
    it 'can add a rental' do
      expect(@person1).to respond_to(:add_rental)
    end
    it 'has it\'s rentals array length increased' do
      expect(@person1.rentals.count).to eq(1) # => from the @rental instance
      Rental.new(Time.now, @person1, @book2)
      expect(@person1.rentals.count).to eq(2)
    end
    it 'can add a new rental with add_rental method' do
      expect(@person1.rentals.count).to eq(1) # => from the @rental instance
      rental = Rental.new(Time.now, @person2, @book3)
      @person1.add_rental(rental)
      expect(@person1.rentals.count).to eq(2)
    end
  end
  context 'When using of_age method' do
    it 'can not use of_age since it\'s private' do
      expect(@person1).not_to respond_to(:of_age?)
      expect(@person2).not_to respond_to(:of_age?)
    end
  end
  context 'When using can_use_services method' do
    it 'can use_services' do
      expect(@person1).to respond_to(:can_use_services?)
      expect(@person2).to respond_to(:can_use_services?)
    end
    it 'should return false for Little Simth and true for Elrond HalfElf' do
      expect(@person1.can_use_services?).to be false
      expect(@person2.can_use_services?).to be true
    end
  end
  context 'When using correct_name method' do
    it 'can use correct_name' do
      expect(@person1).to respond_to(:correct_name)
      expect(@person2).to respond_to(:correct_name)
    end
    it 'should return false for Little Simth and true for Elrond HalfElf' do
      expect(@person1.correct_name).to eql 'Little Smith'
      expect(@person2.correct_name).to eql 'Elrond HalfElf'
    end
    it 'if we do not provide a name it should return us the default value "Unknown".' do
      expect(@person3.correct_name).to eql 'Unknown'
    end
  end
end
