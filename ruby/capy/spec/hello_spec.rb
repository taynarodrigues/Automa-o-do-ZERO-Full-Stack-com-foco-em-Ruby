describe 'Meu primeiro script' do

	it 'visitar a página' do
			
		visit 'http://192.168.151.84/pemaza/login.php?msg=deslogado'
		expect(page.title).to eql 'PemazaWeb®'

	end
end