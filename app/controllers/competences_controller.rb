class CompetencesController < ApplicationController
  def index
    @competences = Competence.all
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

  private
     def competence_params
       params.require(:competence).permit(:title, :description)
     end
end
