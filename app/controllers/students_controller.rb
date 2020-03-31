class StudentsController < ApplicationController
  skip_before_action :authenticate_user!
  def dashboard_student
    @student = current_student
    @formations = Formation.all
  end

  def show
    @students = Student.all
    @formation = Formation.first
  end

end
