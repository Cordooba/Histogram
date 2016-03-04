puts "Cuentame tu historia...."
yourText = gets.chomp
ocurrency = Hash.new(0)
word = yourText.split(" ")

word.each { |x| ocurrency[x] += 1 }
ocurrency = ocurrency.sort_by {|k, v| v}
ocurrency.reverse!

ocurrency.each do |words, ocurrencys|
   puts words+" "+ocurrencys.to_s
end
