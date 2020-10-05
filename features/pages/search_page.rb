class SearchPage < SitePrism::Page

  element :searchField, "#search_query_top"
  element :searchButton, "[name='submit_search']"
  element :sideProduct, "[src='http://automationpractice.com/img/p/7/7-small_default.jpg']"


  def search_product
    searchField.click
    searchField.set('blouse')
    searchButton.click
  end

  def open_product
    sideProduct.click
  end

  def list_registered_client(client_name)
    nameField.set(client_name)
    searchButton.click
  end

  def confirm_cpf_client(client_cpf)
    assert_text("#{client_cpf}")
  end

  def password_fill(password)
    passwordField.set(password)
  end

  def login_enter
    loginButton.click
  end

  def clean_base
    cleanButton.click
    assert_text("Base Limpa com sucesso")
  end

end
