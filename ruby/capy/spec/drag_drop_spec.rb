
describe 'Drag and Drop', :drop do 

	before(:each) do 
		visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
	end

	it 'homem aranha pertence ao time do stark' do

		#elemento alvo (pai: .team-stark; .team-cap  e elemento filho .column )
		stark = find('.team-stark .column')
		cap = find('.team-cap .column')

		#identificar o elemento, ou seja, a imagem à mover
		spiderman = find('img[alt$=Aranha]')
		
		#pegando o elemnto e movendo-o
		spiderman.drag_to stark

		#validar se o elemento consta, ou contém no css
		expect(stark).to have_css 'img[alt$=Aranha]'

		#e também -> validar que o elemento foi movido
		expect(cap).not_to have_css 'img[alt$=Aranha]'

		sleep 5
	end
end