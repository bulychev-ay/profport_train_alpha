require 'rails_helper'

RSpec.describe Competence, type: :model do

   it {should have_many :terms}

   it "create competence" do
      compy = Competence.new title: 'Открытие атмосферы на Венере'
      expect(compy.save).to be_truthy
      #expect(compy.save).to eq true
   end

   it "create competence" do
      compy = build(:competence)
      expect(compy.save).to be_truthy
      #expect(compy.save).to eq true
   end

   it "create_named_competence" do
      compy = Competence.new
      expect(compy.save).to be_falsy
      #expect(compy.save).not_to eq true
      #expect(compy.save).to eq false
   end

   it 'Длина не может быть короткой' do
      compy = Competence.new(title: attributes_for(:competence_invalid))
      expect(compy.save).to be_falsy
   end

end