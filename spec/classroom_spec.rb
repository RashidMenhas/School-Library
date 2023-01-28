require_relative '../classroom'
require_relative '../student'

describe Classroom do
    before :each do
        @classroom = Classroom.new('CS50')
        @student = Student.new('B', 23, name: 'John')
      end

end
