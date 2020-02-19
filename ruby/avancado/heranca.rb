class Veiculo
		attr_accessor :nome, :marca, :modelo

		def initialize(nome, marca, modelo)
			self.nome = nome
			self.marca = marca
			self.modelo = modelo
		end

		def ligar
			puts "#{nome} está prontp para iniciar o projeto"
		end
		
		def buzinar
			puts 'Beep! Beep!'
		end
end

class Carro < Veiculo

		def dirigir
			puts "#{nome} iniciando o trajeto"
		end
	end


 class Moto < Veiculo #o seinal de menor representa que está Herdando da classe veículo
		
		def pilotar
			puts "#{nome} iniciando o trajeto na moto."
		 end
	end


civic = Carro.new('Civic', 'Honda', 'SI')
puts civic.nome
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('lancer', 'mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

#Criando mais um objeto
fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar
