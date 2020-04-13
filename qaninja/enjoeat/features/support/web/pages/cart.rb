

class CartPage #classe que vai representar o carrinho
    include Capybara::DSL # include Capybara::DSL conhece todos os recursos do Capybara

    def box #método do carrinho
        find("#shopping-cart")
    end

    def total
        box.find('tr', text: 'Total').find('td') #chamando método interno do carrinho
    end

    def remove_item(item)
        box.all("table tbody tr")[item].find(".danger").click
    end

    def clean
        click_button "Limpar"
    end
end