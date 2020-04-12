

class CartPage #classe que vai representar o carrinho
    include Capybara::DSL # include Capybara::DSL conhece todos os recursos do Capybara

    def box
        find("#shopping-cart")
    end
end