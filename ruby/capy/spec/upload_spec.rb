describe 'Upload', :upload do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/upload'

		# @arquivo variável de instância; Dir -> classe; pwd -> método que retorna o caminho do diretório do projeto
		@arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt' 
		@imagem = Dir.pwd + '/spec/fixtures/imagem.png'
	end

	it 'upload com arquivo texto' do
		# puts @arquivo
		attach_file('file-upload', @arquivo)
		click_button 'Upload'

	# verificação
		div_arquivo = find('#uploaded-file')
		expect(div_arquivo.text).to eql 'arquivo.txt'
end

it 'upload de imagem' do

		attach_file('file-upload', @imagem) #	attach_file -> Faz o Upload
		click_button 'Upload'

		sleep 5
		img = find('#new-image') # Buscando elemento q possui o id="new-img"
		expect(img[:src]).to include 'uploads/imagem.png' #verifica se no atributo [:src] contém 'imagem.png'
end

after(:each) do
		sleep 3
	end
end