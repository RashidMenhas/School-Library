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

end