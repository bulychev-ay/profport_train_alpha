class CompetencesController < ApplicationController
  def index
    @competences = Competence.all.sort
  end

  def show
    @competence = Competence.find(params[:id])
  end

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.create(competence_params)
    render plain: 'Ok'
  end

  def edit
    @competence = Competence.find(params[:id])
  end

  def update
    @competence = Competence.find(params[:id])
    @competence.update(competence_params)
    render plain: 'Ok'
  end

  private

  def competence_params
    params.require(:competence).permit(:title, :description)
  end
end
