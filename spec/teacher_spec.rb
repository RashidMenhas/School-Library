require_relative '../teacher'
describe Teacher do
  before :each do
    @teacher = Teacher.new('Physicist', 80, name: 'Albert Einstein')
  end
  context 'when teacher object is created' do
    it 'should have all Person attributes and specialization attribute' do
      expect(@teacher.id).to be_between(1, 100).inclusive
      expect(@teacher.age).to be_kind_of Integer
      expect(@teacher.parent_permission).to be_kind_of TrueClass
      expect(@teacher.name).to be_kind_of String
      expect(@teacher.specialization).to be_kind_of String
      expect(@teacher.age).to eq(80)
      expect(@teacher.name).to eq('Albert Einstein')
      expect(@teacher.specialization).to eq('Physicist')
    end
  end
  context 'checking the services method for teacher' do
    it 'can use service' do
      expect(@teacher).to respond_to(:can_use_services?)
    end
    it 'should return true' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
