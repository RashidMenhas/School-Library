require_relative '../teacher'
describe Teacher do
  before :each do
    @teacher = Teacher.new('Physicist', 80, name: 'Albert Einstein')
  end

end