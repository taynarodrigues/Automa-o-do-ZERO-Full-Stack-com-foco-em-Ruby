class RestaurantPage
    include Capybara::DSL

    def details
        find('#detail')
    end

    def menu
        all(".menu-item-info-box") #chamada do elemento está sendo encapsulada no PageObject
    end

    def add_to_cart(name)
        find('.menu-item-info-box', text: name.upcase).find('.add-to-cart').click
    end
end