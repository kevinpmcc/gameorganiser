feature "Signing in" do

  scenario "Signing up" do
    sign_up(name: 'Tester1', email: 'testing@testing.com')

    expect(page).to have_content 'Logout'
  end

  scenario "Logging in" do
    sign_up
    click_on('Logout')
    log_in(email: 'testing@testing.com')

    expect(page).to have_content 'Logout'
    expect(page).to_not have_content 'Sign up'
  end

  scenario 'Game has been added' do
    user = User.create! ({ name: 'Chris', email: 'chris@chris.com', password: 'password' })
    boardgame = Boardgame.create! ({ title: 'Go' })
    game = boardgame.games.create({time: DateTime.now, boardgame_id: boardgame.id})
    game.players.new(user_id: user.id, game_id: game.id)
    game.save

    visit '/'

    expect(page).to have_content boardgame.title

    expect(page).to have_button 'Add me'

    sign_up

    expect(page).to have_button 'Add me'

    click_button('Add me')

    expect(page).to have_content 'Tester1'

    click_button('Remove me')

    expect(page).to_not have_content 'Tester1'
  end
end



def sign_up(name: 'Tester1', email:'testing@testing.com')
  visit('/')
  click_on('Sign up')
  fill_in('Name', with: name)
  fill_in('Email', with: email)
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  click_button('Sign up')
end


def log_in(email: 'testing@testing.com')
  click_on('Log in')
  fill_in('Email', with: email)
  fill_in('Password', with: 'password')
  click_button 'Log in'
end
