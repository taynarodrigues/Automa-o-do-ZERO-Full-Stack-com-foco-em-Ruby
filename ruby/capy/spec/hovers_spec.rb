describe 'Mouse Hover', :hovers do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/hovers'
	end

	it 'quando passo o mouse do Blade' do
		#find mais seletor css
		#Usando expressão Regular cujo o valor de alt contém Blade, passando o acento asteristico
		card = find('img[alt*=Blade]')
		card.hover

		expect(page).to have_content 'Nome: Blade'
	end

	it 'quando passo o mouse do Pantera Negra' do

		#Usando expressão Regular cujo valor de alt começa com Pantera, passando o acento circunflexo antes do igual.
		card = find('img[alt^=Pantera]')
		card.hover

		expect(page).to have_content 'Nome: Pantera Negra'
	end


	it 'quando passo o mouse no Homem Aranha' do
			#Usando expressão Regular cujo o valor de alt termina com Aranha, passando o símbolo dólar antes do igual
		card = find('img[alt$=Aranha]')
		card.hover

		expect(page).to have_content 'Nome: Homem Aranha'
	end

	after(:each) do
		sleep 0.5 #
	end
end