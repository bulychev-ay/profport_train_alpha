# require 'roo'
#
# work_book = Roo::OpenOffice.new("../../tmp/Люди.ods")
# #work_book = Roo::OpenOffice.new("Люди.ods")
# work_book.default_sheet = work_book.sheets.first
# result =  work_book.select do |row|
#    row[0].downcase.chars.any? do |char|
#       char.between? 'a', 'z'
#    end
# end
#
# puts result
#
class TempModel

   def TempModel.talk
      puts "Говорит человечество"
   end

   def talk
      top_secret
   end

   private
     def top_secret
        puts "secret talk"
     end

end

vasya = TempModel.new
misha = TempModel.new

def misha.think
   puts "Misha thinking..."
end
#
# misha.think
# vasya.think

strings = ["Misha", "Vasya"]

def (strings[0]).strange_method
   puts "people are strangers"
end

# str = strings[0]
# str.strange_method


