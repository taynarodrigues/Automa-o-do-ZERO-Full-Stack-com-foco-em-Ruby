Dado("que o produto desejado é {string}") do |produto|
   @produto_nome = produto
end

Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end

Quando("eu adiciono {int} unidade") do |int|
    find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
end

Então("deve ser adicionado {int} unidade deste item") do |quantidade|
    cart = find('#cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}" # (1x) Cup Cake #Usando interpolação de string para monta uma verificação
    puts "(#{quantidade}x) #{@produto_nome}"
    sleep 5

end

Então("o valor total deve ser de {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end