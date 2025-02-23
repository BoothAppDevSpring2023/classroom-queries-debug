class StudentsController < ApplicationController
  def index
    matching_students = Student.all
    @list_of_students = matching_students.order({ :created_at => :desc })
    render({ :template => "students/index.html.erb" })
  end

  def show
    the_id = params.fetch(:id)
    matching_students = Student.where({ :id => the_id })
    @the_student = matching_students.first
    render({ :template => "students/show.html.erb" })
  end
end
