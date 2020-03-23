	describe 'Teclado', :key do

		before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
	end

		it 'enviando teclas' do
			# #utilizando o método send_keys, simulando o envio de uma tecla do teclado hehe
			# find('#campo-id').send_keys :tab
			# #validando a mensagem
			# expect(page).to have_content 'You entered: TAB'

			#Otimizando código
				teclas = %i[tab escape space enter shift control alt] #array de símbolos

				teclas.each do |t|
					find('#campo-id').send_keys t
					#validando a concatenação com o símbolo t e o converter para string to_s e mais o método upcase para caixa a msg sair caixa baixa!
					expect(page).to have_content 'You entered: ' + t.to_s.upcase
					sleep 1
		end
	end

		it 'enviando letras' do
				letras = %w[a s d f g h j k l]
				letras.each do |l|
					find('#campo-id').send_keys l
					expect(page).to have_content  'You entered: ' + l.to_s.upcase
					sleep 1
				end
		end
end