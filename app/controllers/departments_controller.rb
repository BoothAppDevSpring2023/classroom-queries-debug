class DepartmentsController < ApplicationController
  def index
    matching_departments = Department.all

    @list_of_departments = matching_departments.order({ :created_at => :desc })

    render({ :template => "departments/index.html.erb" })
  end



  def show
    the_id = params.fetch("id")
    @the_department = Department.find(the_id)
    @courses = Course.where({ :department_id => @the_department.id })
    render({ :template => "departments/show.html.erb" })
  end
  
end
