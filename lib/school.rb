class School
  attr_reader :name, :roster  #attr reader because we never see "school.roster =" in the spec file & you don't want anyone overwriting what you put in the roster; don't want to expose functionality to other people
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end

school = School.new("Bayside High School")