require 'json'

class ReadData
  def read_books
    books = []
    return books unless File.exist?('./data/books.json')

    file = File.open('./data/books.json')
    data = JSON.parse(file.read)
    data.each do |book|
      books << Book.new(book['title'], book['author'])
    end
    file.close
    books
  end

  def read_people
    people = []
    return people unless File.exist?('./data/people.json')

    file = File.open('./data/people.json')
    data = JSON.parse(file.read)
    data.each do |person|
      if person['type'] == 'Student'
        student = Student.new(person['classroom'], person['age'], name: person['name'],
                                                                  parent_permission: person['has_permission'])
        student.id = person['id']
        people << student
      else
        teacher = Teacher.new(person['specialization'], person['age'], name: person['name'])
        teacher.id = person['id']
        people << teacher
      end
    end
    file.close
    people
  end

  def read_rentals
    rentals = []
    return rentals unless File.exist?('./data/rentals.json')

    file = File.open('./data/rentals.json')
    data = JSON.parse(file.read)
    data.each do |rental|
      rentals << make_rental(rental)
    end
    file.close
    rentals
  end

  def make_rental(rental)
    if rental['type'] == 'Student'
      student = Student.new(rental['classroom'], rental['age'], name: rental['name'],
                                                                parent_permission: rental['has_permission'])
      student.id = rental['id']
      book = Book.new(rental['title'], rental['author'])
      rental = Rental.new(rental['date'], student, book)
    else
      teacher = Teacher.new(rental['specialization'], rental['age'], name: rental['name'])
      teacher.id = rental['id']
      book = Book.new(rental['title'], rental['author'])
      rental = Rental.new(rental['date'], teacher, book)
    end
    rental
  end
end
