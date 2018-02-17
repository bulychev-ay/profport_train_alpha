class CompetencesController < ApplicationController
  before_action :find_competence, only: %i[show edit update destroy]

  def find_competence
    @competence = Competence.find(params[:id])
  end

  def index
    @competences = Competence.all.sort
  end

  def show
  end

  def new
    @competence = Competence.new
     2.times { @competence.terms.build }
  end

  def create
    @competence = Competence.create(competence_params)
    if @competence.save
       redirect_to competence_path(@competence), notice: 'Создали компетенцию'
    else
       flash[:alert] = "Ошибка при создании компетенции"
       render 'new'
    end

  end

  def edit
  end

  # TODO: обработка ошибок
  def update
    @competence.update(competence_params)
    redirect_to competence_path(@competence), notice: 'Изменили компетенцию'
  end

  # TODO: обработка ошибок
  def destroy
    @competence.destroy
    redirect_to competences_path, notice: 'Изменили компетенцию'
  end

  private

  def competence_params
    params.require(:competence).permit(:title, :description, terms_attributes: [:title, :id])
  end
end
