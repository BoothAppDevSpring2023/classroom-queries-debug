class EnrollmentsController < ApplicationController
  def index
    matching_enrollments = Enrollment.all

    @list_of_enrollments = matching_enrollments.order({ :created_at => :desc })

    render({ :template => "enrollments/index.html.erb" })
  end

  def show
    @enrollment = Enrollment.find(params[:id])

    render({ :template => "enrollments/show.html.erb" })
  end
end
