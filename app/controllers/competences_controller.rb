class CompetencesController < ApplicationController
  def index
    @competences = Competence.all
  end
end
