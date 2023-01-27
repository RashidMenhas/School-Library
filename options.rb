require './app'

class Options
    def option_case(choice. app)
        case choice
        when 1
          list_all_books
        when 2
          list_all_people
        when 3
          create_person
        when 4
          create_book
        when 5
          create_rental
        when 6
          list_rentals_by_id
        else
          puts 'Incorrect choice, choose a number between 1..9'
        end
      end      
end