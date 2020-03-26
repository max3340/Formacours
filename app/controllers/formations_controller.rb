class FormationsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
  end

  def index
    @formations = Formation.all
  end

  def edit
  end

  def update
  end

  def create
    @formation = Formation.new(formation_params)
    @formation.teacher = current_teacher


    if @formation.save
      redirect_to @formation
    else
      render :new
    end

  end

  def new
    @formation = Formation.new
  end

  def destroy
  end

  private

  def formation_params
    params.require(:formation).permit(:name, :start_date, :end_date)
  end

end
