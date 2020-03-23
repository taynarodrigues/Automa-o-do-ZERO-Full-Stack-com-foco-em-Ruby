describe 'Dynamic Control', :dc do

		before(:each) do
			visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
		end

		it 'quando habilita o campo' do
		 # has_field? -> método que permite pesquisar ou perguntar se um campo existe em uma determinada propriedade por ex: "disabled"
			res =	page.has_field? 'movie', disabled: true
			puts res

			click_button 'Habilita'

			res = page.has_field? 'movie', disabled: false
			puts res
		end
end