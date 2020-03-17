describe 'Caixas de seleção', :checkbox do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
	end

	it 'marcando uma opção' do
		check('thor') #atributo id="thor"
	end

	it 'desmarcando uma opção' do
		uncheck('antman') #atributo name="ant-man"
	end

	it 'marcando com find set true' do
		find('input[value=cap]').set(true) #atributo value="cap" do tipo input .set(true -> marque esse cara!)
	end

	it 'desmarcando com find set false' do
		find('input[value=guardians]').set(false)
	end

	after(:each) do
		sleep 3
	end

end