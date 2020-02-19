# 5.times do |i|
# 	puts 'Repetindo a mensagem ' + i.to_s + ' vez(es).'
# end

# Looping infinito 
# while true do
# 	puts 'Looping infinito'
# end

# init = 0
# while init <= 10 do
# 	puts 'Repetindo a mensagem ' + init.to_s + ' vez(es)'
# 	init += 1
# end

# for item in(0...10)
# 	puts 'Repetindo a mensagem ' + item.to_s + ' vez(es)'
# end


#Arrays
# vingadores = ['Ironmam', 'Hulk', 'Spiderman']
# puts vingadores.class

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']

vingadores.each do |v|
	puts v
end