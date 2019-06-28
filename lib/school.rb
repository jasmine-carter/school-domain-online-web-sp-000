class School
attr_reader :roster
attr_writer :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
    @roster[grade] = []
    @roster[grade] << name
    end
  end

  def grade(grade)
    roster.values_at(grade).flatten
  end

  def sort(roster)
    @roster.sort
  end

end
