class CompetencesController < ApplicationController
  before_action :find_competence, only: %i[show edit update destroy]

  def find_competence
    @competence = Competence.find(params[:id])
  end

  def index
    @competences = Competence.all.sort
  end

  def show; end

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.create(competence_params)
    redirect_to competence_path(@competence), notice: 'Создали компетенцию'
  end

  def edit; end

  def update
    @competence.update(competence_params)
    redirect_to competence_path(@competence), notice: 'Изменили компетенцию'
  end

  def destroy
    @competence.destroy
    redirect_to competences_path, notice: 'Изменили компетенцию'
  end

  private

  def competence_params
    params.require(:competence).permit(:title, :description)
  end
end
