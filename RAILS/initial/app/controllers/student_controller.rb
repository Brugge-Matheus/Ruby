class StudentController < ApplicationController
  def list
    @students = [
      { :name => "Matheus", :age => 19, :description => "Lorem ipsum dolor sit amet dallas" },
      { :name => "Matheus2", :age => 19, :description => "Lorem ipsum dolor sit amet dallas" },
      { :name => "Matheus3", :age => 19, :description => "Lorem ipsum dolor sit amet dallas" },
      { :name => "Matheus4", :age => 19, :description => "Lorem ipsum dolor sit amet dallas" },
      { :name => "Matheus5", :age => 19, :description => "Lorem ipsum dolor sit amet dallas" },
    ]
  end
end
