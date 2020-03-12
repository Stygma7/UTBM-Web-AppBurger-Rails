class Burger < ApplicationRecord
    def nutriments
        require 'openfoodfacts'

        product = Openfoodfacts::Product.get(code, locale: 'fr')

        if product == nil
            product = ["NO_DATA"]
        else
            product = product.nutriments
        end

        return product
    end
end
