class ProductPage < SitePrism::Page

  element :quantityField, "[name='qty']"
  element :addCartButton, "#add_to_cart"
  element :proceedToCheckoutButton,  "[title='Proceed to checkout']"
  element :productPriceText,  "[itemprop='price']"
  element :productNameText, "[itemprop='name']"
  element :saveButton, "#botaoSalvar"
  element :cleanButton, "#botaoLimpar"
  element :cancelButton, ".btn-danger"

  def get_product_name
    return productName = productNameText.text(:all)
  end

  def get_product_price
    productPrice = productPriceText.text(:all)
    productPrice[0] =  ''
    return productPriceFormated = productPrice.to_f
  end

  def set_product_go_cart(quantity)
    quantityField.set(quantity)
    addCartButton.click
    sleep 2
    proceedToCheckoutButton.click
  end

end
