class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_then?(other_student)
    grade > other_student.grade
  end

  protected

  attr_reader :grade
end

joe = Student.new('Joey', 80)
bob = Student.new('Bobby', 65)

puts 'Well done!' if joe.better_grade_then?(bob)
