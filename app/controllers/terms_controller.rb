class TermsController < ApplicationController
  def create; end

  def index
    @terms = Term.all
    respond_to do |format|
      format.html
      format.json
      format.xml
      format.pdf { send_file to_pdf(@terms) }
    end
  end

  def new; end

  private

  def to_pdf(terms)
     pdf = Prawn::Document.new
     pdf.text terms.map(&:title).join('\n')
     filename = "#{Rails.root}/app/views/terms/term.pdf"
     pdf.render_file filename
     filename
  end
end
