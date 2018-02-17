class TermsController < ApplicationController
  def create
     @term = Term.new(term_params)
     @term.competence_id = params[:competence_id]
     @term.save
     redirect_to competences_path
  end

  def index
    @terms = Term.where(competence_id: params[:competence_id])
    respond_to do |format|
      format.html
      format.json
      format.xml
      format.pdf { send_file to_pdf(@terms) }
    end
  end

  def new
     @competence = Competence.find(params[:competence_id])
     @term = Term.new
  end

  def learn
    render plain: "Mi izychili #{Term.find(params[:id])}"
  end

  private

  def to_pdf(terms)
     pdf = Prawn::Document.new
     pdf.text terms.map(&:title).join('\n')
     filename = "#{Rails.root}/app/views/terms/term.pdf"
     pdf.render_file filename
     filename
  end

   def term_params
     params.require(:term).permit(:id, :title)
   end
end
