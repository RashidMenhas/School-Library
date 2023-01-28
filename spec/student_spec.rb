require_relative '../student'
require_relative '../classroom'
describe Student do
  before :each do
    @student = Student.new('Padwan 999', 26, name: 'Luke Skywalker')
    @classroom = Classroom.new('The Dark Force')
  end
end