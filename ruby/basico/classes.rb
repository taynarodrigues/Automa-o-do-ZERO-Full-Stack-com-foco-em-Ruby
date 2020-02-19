#Ruby é uma linguaagem considerada puramnete orientada a objetos
#Porque no Ruby tudo são objetos

#Classe possui atributos e métodos
#Caracteristicas e Ações

#Carro (Nome, Marca, Modelo, Cor, Quantidade de portas, etc...)
#Ligar, Buzinar, Parar, etc...

# class Carro

# end

# #variavel
# civic = Carro.new
# puts civic.class

class Carro
	attr_accessor :nome

	def ligar
			puts 'O carro está pronto para iniciar o trajeto.'
	end
end

civic = Carro.new
civic.nome = 'Civic'
puts civic.nome
civic.ligar