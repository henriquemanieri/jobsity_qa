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


  def register_client(client)
    nameField.set(client)
    statusCbBoxActive.click
    balanceField.set(rand 10000...15000)
    saveButton.click
  end

  def cpf_fill(cpf)
    cpfField.set(cpf)
  end


  def register_client_active
    name_generator
    cpf_generator
    nameField.set(Faker::Friends.character)
    cpfField.set(Faker::CPF.numeric)
    statusCbBoxActive.click
    balanceField.set(rand 10000...15000)
    saveButton.click
  end

  def register_client_inactive
    name_generator
    cpf_generator
    nameField.set(Faker::Friends.character)
    cpfField.set(Faker::CPF.numeric)
    statusCbBoxInactive.click
    balanceField.set(rand 10000...15000)
    saveButton.click
  end


  def confirm_registration
    assert_text("Cliente salvo com sucesso")
  end

end
