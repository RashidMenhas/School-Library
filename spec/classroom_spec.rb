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

end
