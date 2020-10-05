class ContactUsPage < SitePrism::Page

  element :emailField, "#email"
  element :orderIdField,  "#id_order"
  element :messageField, "#message"
  element :submitButton, "#submitMessage"
  element :successMessage, ".alert-success"

  def fill_form
    select('Webmaster', :from => 'id_contact')
    emailField.set(Faker::Internet.email)
    orderIdField.set(Faker::Crypto.md5)
    messageField.set(Faker::Lorem.paragraph)
    submitButton.click
  end

  def confirm_success_message
    find(".alert-success").visible?
    assert_text("Your message has been successfully sent to our team.")
  end

end
