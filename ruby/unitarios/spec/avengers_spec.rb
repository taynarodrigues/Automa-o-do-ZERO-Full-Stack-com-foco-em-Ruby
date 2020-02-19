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
		expect(hq.list).to eql ['Spiderman']
	end

end