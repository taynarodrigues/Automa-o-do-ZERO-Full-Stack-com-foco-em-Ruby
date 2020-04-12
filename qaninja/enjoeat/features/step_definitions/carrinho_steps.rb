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
    cart_page = CartPage.new
    expect(cart_page.box).to have_text "(#{quantidade}x) #{@produto_nome}" 
    puts "(#{quantidade}x) #{@produto_nome}"
end

Então("o valor total deve ser de {string}") do |valor_total|
    cart_page = CartPage.new
    total = cart_page.box.find('tr', text: 'Total').find('td') 
    expect(total.text).to eql valor_total
end

# Lista de Produtos

Dado("que os produtos desejados são:") do |table|
    @product_list = table.hashes 
end

Quando("eu adiciono todos os itens") do
    @product_list.each do |p|
         p["quantidade"].to_i.times do 
           find('.menu-item-info-box', text: p["nome"].upcase).find('.add-to-cart').click  
      end
  end
end

Então("vejo todos os itens no carrinho") do
    cart_page = CartPage.new
    @product_list.each do |p|
        expect(cart_page.box).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end
end

# Remover itens

Dado("que eu tenho os seguintes itens no carrinho") do |table|
    @product_list = list = table.hashes
    #utilizando um recurso novo
    steps %{
        Quando eu adiciono todos os itens
    }
end

Dado("eu removo somente o {int}") do |item|
    cart_page = CartPage.new
    cart_page.box.all("table tbody tr")[item].find(".danger").click
end

#Remover todos os itens

Quando("eu removo todos os itens") do
    cart_page = CartPage.new
    @product_list.each_with_index do |value, indx| 
        cart_page.box.all("table tbody tr")[indx].find(".danger").click
    end
end

Quando("eu limpo o meu carrinho") do
    click_button "Limpar"
end

Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
    cart_page = CartPage.new
    expect(cart_page.box).to have_text mensagem
end