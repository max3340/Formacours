class StudentsController < ApplicationController
  skip_before_action :authenticate_user!
  def dashboard
    @teacher = current_teacher
  end
end
