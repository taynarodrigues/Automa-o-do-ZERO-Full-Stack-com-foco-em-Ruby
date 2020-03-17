
describe 'Caixa de seleção', :dropdown do

	it 'item especifico' do

		visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
		select('Loki', from: 'dropdown')
		sleep 3 #temporário
	end

	it 'item especifico com o find' do

		visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
		#a variável drop, irá guardar a busca do elemento
		drop = find('.avenger-list')
		drop.find('option', text: 'Scott Lang').select_option
		sleep 3 #temporario
	end

	it 'qualquer item', :sample do
		visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
		drop = find('.avenger-list')
		drop = find('option', text: 'Scott Lang').select_option
		#drop.all('option').sample.select_option
				sleep 3 #temporario
	end
end