describe 'Botões de Radio', :radio do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/radios'
	end

	it 'seleção por ID' do
		choose('cap') #choose-> escolha
	end

	it 'seleção por find e css selector' do
		find('input[value=guardians]').click #evento de click
	end

	after(:each) do
		sleep 3
	end
end