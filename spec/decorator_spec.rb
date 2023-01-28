require_relative '../person'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'

describe CapitalizeDecorator do
    before :each do
        @person = Person.new(22, name: 'maximilianus')
    @capitalized_name = CapitalizeDecorator.new(@person)
    end

    context 'When using the correct_name method from the CapitalizeDecorator class' do
        it 'can use correct_name' do
          expect(@capitalized_name).to respond_to(:correct_name)
        end
        it 'should have the first letter as uppercase' do
          expect(@capitalized_name.correct_name[0]).to eql @person.name[0].upcase
        end
        it 'should return the name in capitalized' do
          expect(@capitalized_name.correct_name).to eql 'Maximilianus'
        end
      end
end