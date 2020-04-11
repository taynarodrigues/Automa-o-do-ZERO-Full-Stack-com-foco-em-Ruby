Quando("acesso a lista de restaurantes") do
  visit '/restaurants'
end

Então("vejo todas as opções disponíveis") do
  restaurantes = all('.restaurant-item') #o método all devolve uma coleção de elementos (array)
  # puts restaurantes.size #o método size trás a quantidade de item
  # puts restaurantes.class #o método class devolve o tipo
  expect(restaurantes.size).to be > 0 #Confirma se a quantidade é maior que zero
end

Então("cada restaurante deve exibir sua categoria") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir o tempo de entrega") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir sua nota de avaliação") do
  pending # Write code here that turns the phrase above into concrete actions
end