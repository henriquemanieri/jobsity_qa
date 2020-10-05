class CartPage < SitePrism::Page
  include RSpec::Matchers

  element :productTotalCart, "#total_product"
  element :productNameText, ".product-name"

  def validate_product_price(productName, totalPrice)
     productNameCart = productNameText.text(:all)
     totalProductPriceCart = productTotalCart.text(:all)
     totalProductPriceCart[0] = ''
     totalProductPriceCart = totalProductPriceCart.to_f
     expect(productNameCart).to eq(productName)
     expect(totalProductPriceCart).to eq(totalPrice)
  end

  def search_all_transactions
    searchButton.click
  end

  def confirm_transaction
    assert_text("Venda realizada com sucesso")
  end

end
