# begin
# 	#Devo conter alguma coisa
# 	file = File.open('./ola.txt')
# 	if file
# 		puts file.read
# 	end
# rescue
# 	#Obter um possível erro
# 	puts e.message
# 	puts e.backtrace
# end

def soma(n1, n2)
	n1 + n2
rescue Exception => e
	puts e.message
	puts 'Erro ao executar a soma'
end

soma('10', 5)