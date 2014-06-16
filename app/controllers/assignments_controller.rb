class AssignmentsController < ApplicationController

  def index
    @course = Course.current
    @assignments = @course.assignments.active
  end

  def show
    @course = Course.current
    @assignment = Assignment.where(active: true, id: params[:id]).first
  end

end