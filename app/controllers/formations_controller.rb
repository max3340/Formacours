class FormationsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @formation = Formation.find(params[:id])

  end

  def index
    @formations = Formation.all
  end

  def edit
    @formation = Formation.find(params[:id])
  end

  def update
    @formation = Formation.find(params[:id])
    @formation.update(formation_params)
    redirect_to formation_path(@formation)
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
    @formation = Formation.find(params[:id])
    @formation.destroy
    redirect_to formations_path
  end

  private

  def formation_params
    params.require(:formation).permit(:name, :start_date, :end_date)
  end

end
