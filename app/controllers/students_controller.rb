class StudentsController < ApplicationController
  skip_before_action :authenticate_user!
  def dashboard_student
    @student = current_student
    @formations = Formation.all
  end

  def show
    @students = Student.all
    @teacher = current_teacher
    @formation = Formation.find(params[:id])
  end

end
