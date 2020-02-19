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
	attr_accessor :saldo

	def deposita(valor)
		# puts valor.class ->Definir o tipo
		self.saldo += valor
		puts "Depositando a quantida de #{valor} reais"
	end
end

c = Conta.new

#Qual o tipo do saldo
# puts c.saldo.class

#Inicializar saldo
c.saldo = 0.0
c.deposita(100.00)

#Verificar o valor do saldo
puts c.saldo