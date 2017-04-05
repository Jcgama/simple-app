require 'rails_helper'

RSpec.describe 'creating a user', type: :feature do
   it 'creates a new user' do
      visit new_user_registration_path
      
      fill_in 'user_email', :with => 'bob@bob.com'
      fill_in 'user_first_name', :with => 'Bob'
      fill_in 'user_last_name', :with => 'Bobson'
      fill_in 'user_password', :with => 'qwertyuiop'
      fill_in 'user_password_confirmation', :with => 'qwertyuiop'
      
      find_button('Criar conta').click
      expect(page).to have_content 'bob@bob.com'
   end
   
    
end