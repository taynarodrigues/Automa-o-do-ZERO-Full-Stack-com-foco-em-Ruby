describe 'Alternado janelas', :wnd do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/windows'
	end

	it 'nova janela' do

		click_link 'Clique aqui' #clique no link que conteḿ o texto 'clique aqui' para ele navegar p/ uma nova aba com o título 'nova janela'										
		within_window -> { page.title == 'Nova Janela'} do #utilizando o escopo 'within'. Trabalhar com códigos q deve manipular elementos do html da 'Nova Janela'
			expect(page).to have_content 'Aqui temos uma nova janela \o/' #verificar o conteúdo da página na 'Nova Janela'
		end

		sleep 3
	end
end