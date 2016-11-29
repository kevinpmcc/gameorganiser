feature "Signing in" do

  scenario "Signing in with correct credentials" do
  visit('/')
  click_on('Sign up')
  fill_in('Name', with: 'Testman')
  fill_in('Email', with: 'testing@testing.com')
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  click_button('Sign up')
  expect(page).to have_content 'Logout'
  end
end

def test_google(name:, email:, password: 'password')
  visit('/')
  click_on('Sign up')
  fill_in('Name', with: name)
  fill_in('Email', with: email)
  fill_in('Password', with: password)
  fill_in('Password confirmation', with: password)
  click_button('Sign up')
  click_on('Logout')
end

def create_game(title:)
  visit('/boardgames/new')
  fill_in('Title', with: title)
  click_button('submit')
end

