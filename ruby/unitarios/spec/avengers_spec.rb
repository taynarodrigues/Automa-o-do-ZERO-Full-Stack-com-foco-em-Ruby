#Criação da Classe
class AvengersHeadQuarter
	attr_accessor :list

	def initialize
		self.list = []
	end

	def put(avenger)
		self.list.class
		self.list.push(avenger)
	end
end

#TDD (Desenvolvimento criado por testes)
describe AvengersHeadQuarter do

	it 'deve adicionar um vigador' do
		hq = AvengersHeadQuarter.new #O hq é a instancia de uma classe

		hq.put('Spiderman')
		expect(hq.list).to include 'Spiderman'
			# expect(hq.list).to eql ['Spiderman'] #include -> se contém na lista
	end

	it 'deve aicionar uma lista de vingadores' do
		hq = AvengersHeadQuarter.new
		hq.put('Thor')
		hq.put('Hulk')
		hq.put('Spiderman')

		# expect(hq.list).to include 'Hulk'
		res = hq.list.size > 0

		expect(hq.list.size).to be > 0 #verificando se existe uma lista; o método size só funciona pra listas
		expect(res).to be true
	end

	it 'thor deve ser o primeiro da lista' do
		hq = AvengersHeadQuarter.new

		hq.put('Thor')
		hq.put('Hulk')
		hq.put('Spiderman')

		expect(hq.list).to start_with('Thor')

	end

	it 'Ironman deve ser o último da lista' do
			hq = AvengersHeadQuarter.new

			hq.put('Thor')
			hq.put('Hulk')
			hq.put('Spiderman')
			hq.put('Ironman')

			expect(hq.list).to end_with('Ironman')
	end

	it 'deve conter o sobrenome' do

		avenger = 'Peter Parker'

		expect(avenger).to match(/Parker/)
		expect(avenger).not_to match(/Papito/)
	end
end