require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before :each do
    @classroom = Classroom.new('CS50')
    @student = Student.new('B', 23, name: 'John')
  end
  context 'When creating a new Classroom class' do
    it 'should have a label property' do
      expect(@classroom.label).to eql 'CS50'
    end
    it 'the label should be a string' do
      expect(@classroom.label).to be_kind_of String
    end
    it 'should be an instance of the Classroom class' do
      expect(@classroom).to be_instance_of Classroom
    end
  end
  context 'When adding classroom for the Student' do
    it 'can add a student' do
      expect(@classroom).to respond_to(:add_student)
    end
    it 'Can add new Student for the Classroom' do
      @classroom.add_student(@student)
      expect(@classroom.students.count).to eq(1)
    end
    it 'Should assign classroom to student upon adding the student to the classroom' do
      expect(@student.classroom).to eql 'B'
      @classroom.add_student(@student)
      expect(@student.classroom.label).to eql 'CS50'
    end
  end
end
