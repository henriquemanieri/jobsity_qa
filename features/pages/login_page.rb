class LoginPage < SitePrism::Page

  element :emailField, "#email"
  element :passwordField, "#passwd"
  element :loginButton,  "#SubmitLogin"


  def email_fill(user)
    emailField.click
    emailField.set(user)
  end

  def password_fill(password)
    passwordField.set(password)
  end

  def login_enter
    loginButton.click
  end

  def my_account_confirmation
    assert_text("MY ACCOUNT")
    find("[title='Orders']").visible?
    find("[title='Information']").visible?
  end


end
