require_relative '../student'
require_relative '../classroom'
describe Student do
  before :each do
    @student = Student.new('Padwan 999', 26, name: 'Luke Skywalker')
    @classroom = Classroom.new('The Dark Force')
  end
  context 'When making a new Student' do
    it 'should have all Person attributes and classroom attribute' do
      expect(@student.id).to be_between(1, 100).inclusive
      expect(@student.age).to be_kind_of Integer
      expect(@student.parent_permission).to be_kind_of TrueClass
      expect(@student.name).to be_kind_of String
      expect(@student.classroom).to be_kind_of String
      expect(@student.age).to eq(26)
      expect(@student.name).to eql 'Luke Skywalker'
      expect(@student.classroom).to eql 'Padwan 999'
    end
    it 'should be an instance of the class Student' do
      expect(@student).to be_instance_of Student
    end
  end
  context 'When using the =classroom method' do
    it 'can add a classroom' do
      expect(@student).to respond_to(:classroom=)
    end
    it 'should assign a new classroom' do
      @student.classroom = @classroom
      expect(@student.classroom.label).to eql 'The Dark Force'
    end
    it 'should have it\'s classroom attribute to a Classroom instance' do
      @student.classroom = @classroom
      expect(@student.classroom).to be_kind_of Classroom
    end
  end
end
