class Carro
	#Atributo
 attr_accessor :nome, :marca, :modelo

 #Construtor
	def initialize(nome, marca, modelo)
			self.nome = nome
			self.marca = marca
			self.modelo = modelo
	end

	#Métodos
	def ligar
		puts "#{nome} esta pronto para iniciar o trajeto!"
	end

	def buzinar
		puts 'Beep! Beep!'
	end

	def dirigir
		puts "#{nome} iniciando o trajeto"
	end
end


 class Moto
		attr_accessor :nome, :marca, :modelo

		def initialize(nome, marca, modelo)
			self.nome = nome
			self.marca = marca
			self.modelo = modelo
		end

		def ligar
			puts "#{nome} está pronto para iniciar o trajeto"
		end

		def buzinar
			puts 'Beep! Beep!'
		end

		def pilotar
			puts "#{nome} iniciando o trajeto na moto."
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
fazer = Moto.new('Fazer', 'Yamaha', '250')
fazer.ligar
fazer.buzinar
fazer.dirigir
