describe 'Alternado janelas', :wnd do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/windows'
	end

	it 'nova janela' do

		nova_janela = window_opened_by{ click_link 'Clique aqui' } #abre uma nova aba através do link que conteḿ o texto 'clique aqui'
								
		within_window -> { page.title == 'Nova Janela'} do #utilizando o escopo 'within'. Trabalhar com códigos q deve manipular elementos do html da 'Nova Janela'
			expect(page).to have_content 'Aqui temos uma nova janela \o/' #verificar o conteúdo da página na 'Nova Janela'
		end

		# fechar a aba
		nova_janela.close 
		expect(nova_janela.closed?).to be true # método closed retornará verdadeiro se de fato à janela foi fechada

		sleep 3
	end
end
