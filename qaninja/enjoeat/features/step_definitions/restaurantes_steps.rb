Quando("acesso a lista de restaurantes") do
  visit '/restaurants'
end

Então("vejo todas as opções disponíveis") do
  restaurantes = all('.restaurant-item')
  expect(restaurantes.size).to be > 0 
end

Então("cada restaurante deve exibir sua categoria") do
  
  restaurant_data = [
    {name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9 }, #massa de testes
    {name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5 },
  ]

  restaurants = all('.restaurant-item')

  puts '#### CATEGORIAS ######'
  restaurant_data.each_with_index do |value, index|   #o with_inde trás o valor do índice
    puts value[:category] #busca do elemento da categoria
    puts restaurants[index].text #busca do elemento na posição
  end
end

Então("cada restaurante deve exibir o tempo de entrega") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir sua nota de avaliação") do
  pending # Write code here that turns the phrase above into concrete actions
end