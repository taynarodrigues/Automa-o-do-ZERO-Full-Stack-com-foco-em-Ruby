# class Conta
# 	def deposita(valor)
# 		# puts 'Depositando a quantia de ' + valor.to_s + ' reais.'

# 		#interpolação de string's
# 		puts "Depositando a quantia de #{valor} reais." 
# 	end

# 	c= Conta.new

# 	c.deposita(100.00)
# end

class Conta
	attr_accessor :saldo, :nome

	#Construtor
	def initialize(nome)
		self.saldo = 0.0
		self.nome = nome
	end

	def deposita(valor)
		self.saldo += valor
		puts "Depositando a quantida de #{valor} reais na conta do #{self.nome}."
	end
end

c = Conta.new('Papito') #passar o argumento no momento de instanciar a classe

c.deposita(100.00)
#Verificar o valor do saldo
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome