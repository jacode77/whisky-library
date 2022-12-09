module ListingsHelper

    def format_brand(brand)

    end

    def format_price(price)
        "$" + (price / 100).to_s
    end
end
