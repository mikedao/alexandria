require 'rails_helper'

RSpec.describe 'User registration form', type: :feature do
  it 'can create a new user' do
    visit root_path

    click_on 'Register'

    expect(current_path).to eq(new_user_path)

    username    = 'funbucket13'
    password    = 'test'
    email       = 'someone@example.com'
    first_name  = 'Jane'
    last_name   = 'Doe'
    location    = 'Denver, CO'

    fill_in :user_username, with: username
    fill_in :user_password, with: password
    fill_in :user_email, with: email
    fill_in :user_first_name, with: first_name
    fill_in :user_last_name, with: last_name
    fill_in :user_location, with: location

    click_on 'Create User'

    expect(page).to have_content("Welcome, #{username}!")
  end
end