describe 'Alertas de JS', :alerts do
	
	before(:each) do
			visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
	end

	it 'alerta' do
		click_button 'Alerta'

		msg = page.driver.browser.switch_to.alert.text #ele clica no botão, faz um switch pro 'alert' pega o texto e grava na variável 'msg'
		puts msg #imprimindo a mensagem
		expect(msg).to eql 'Isto é uma mensagem de alerta' #verificar!
		sleep 3
	end

	it 'sim confirma' do
		click_button 'Confirma'

		msg = page.driver.browser.switch_to.alert.text
		expect(msg).to eql 'E ai confirma?'
		sleep 2

		page.driver.browser.switch_to.alert.accept #método accept-> 'aceitar'
		expect(page).to have_content 'Mensagem confirmada'
		sleep 3
	end

		it 'não confirma' do
		click_button 'Confirma'

		msg = page.driver.browser.switch_to.alert.text
		expect(msg).to eql 'E ai confirma?'
		sleep 2

		page.driver.browser.switch_to.alert.dismiss #método cancelar-> 'cancelar'
		expect(page).to have_content 'Mensagem não confirmada'
		sleep 3
	end

	it 'accept prompt', :accept_prompt do
		accept_prompt(with: 'Tayna') do #aceita esse prompt com o texto 'tayna'
			click_button 'Prompt' #aceita quando ele estiver um evento de click no botão com o nome 'prompt'
			sleep 2
		end
		expect(page).to have_content 'Olá, Tayna' #verificar
		sleep 3
	end

	#Desafio
	#Quando eu não aceito este prompt
	#Então a mensagem dever Olá, null
	it 'dismiss prompt', :dismiss_prompt do
		accept_prompt(with: 'null') do
			click_button 'Prompt'
			sleep 2
		end
		expect(page).to have_content 'Olá, null'
		sleep 3
	end

	it 'cancelar prompt', :dismiss_prompt do
		 click_button 'Prompt' 
		 msg = page.driver.browser.switch_to.alert.text 
		 	 sleep 2
		 expect(msg).to eql 'Qual o seu Nome?' 
		 sleep 2
		 page.driver.browser.switch_to.alert.dismiss 

		 expect(page).to have_content 'Olá, null' 
		 	 sleep 2
		end	
end