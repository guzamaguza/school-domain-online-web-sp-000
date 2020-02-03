# code here!
class School
  #use .new to create
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #@roster.sort_by { |key, val| key }.to_h
    sorted_by_key = Hash[@roster.sort_by {|key,val| key}]
  end

end
