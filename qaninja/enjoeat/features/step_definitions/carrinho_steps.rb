Dado("que o produto desejado é {string}") do |produto|
   @produto_nome = produto
end

Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end

Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
        quantidade.times do
            find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
        end
    end

Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
    cart = find('#cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}" 
    puts "(#{quantidade}x) #{@produto_nome}"
end

Então("o valor total deve ser de {string}") do |valor_total|
    cart = find('#cart')
    total = cart.find('tr', text: 'Total').find('td') 
    expect(total.text).to eql valor_total
    sleep 5
end

# Lista de Produtos

Dado("que os produtos desejados são:") do |table|
    @product_list = table.hashes #método do cucumber, transforma um array em hashes
    puts @product_list #-> mostra a transformação de um arrary hashes listando todos os produtos : [{"nome"=>"Cup Cake", "preco"=>"R$ 8,70"}, {"nome"=>"Donut", "preco"=>"R$ 2,50"}, {"nome"=>"Pão Artesanal Italiano", "preco"=>"R$ 15,90"}]
end

Quando("eu adiciono todos os itens") do
    @product_list.each do |p| #argumento p e pegar a chave pelo nome: p["nome"]
            p["quantidade"].to_i.times do #to_i.times -> converte para string  e passar a ser um valor inteiro
                find('.menu-item-info-box', text: p["nome"].upcase).find('.add-to-cart').click  
                sleep 2
        end
    end
end

Então("vejo todos os itens no carrinho") do
    cart = find('#cart')
    @product_list.each do |p|
        expect(cart).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end
end