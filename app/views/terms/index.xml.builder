# DSL

xml.term do
   @terms.each do |term|
      xml.termin term.title
   end
end