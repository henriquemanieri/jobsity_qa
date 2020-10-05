#encoding: utf-8
#language: en


Feature: Login
	As a custumer 
	I want to login on my account

	@login
	Scenario: Login a registered user
		Given I'm on home page
		When click on the sign in link
		And fill with the "test_user"
		Then I access my account page


