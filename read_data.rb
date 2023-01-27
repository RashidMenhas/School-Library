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