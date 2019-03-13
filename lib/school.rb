require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

def grade(i)
  roster.map do |k, v|
    return v if k == i
  end
end

def sort
  sort_hash = Hash.new
  roster.each do |k, v|
    sort_hash[k] = v.sort
  end
  sort_hash
end

end
