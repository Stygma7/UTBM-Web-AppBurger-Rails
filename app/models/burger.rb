class Burger < ApplicationRecord
    def nutriments
        require 'openfoodfacts'

        product = Openfoodfacts::Product.get(code, locale: 'fr')

        if product == nil
            product = [["rien"], ["toujours rien"]]
        else
            product = product.nutriments
        end

        return product
    end
end
