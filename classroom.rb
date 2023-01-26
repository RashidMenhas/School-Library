class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_stdent(student)
    @students.push(student)
    student.Classroom = self
  end
end
