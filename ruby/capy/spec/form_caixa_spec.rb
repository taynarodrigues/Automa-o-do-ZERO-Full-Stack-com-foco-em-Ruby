
describe 'Forms' do
	it 'login com sucesso' do

		visit 'http://192.168.151.84/pemaza/'

	
		fill_in 'edt_login', with: 'caixa'
		fill_in 'edt_senha', with: '1234'
	
		click_button 'acessar'

	end
end