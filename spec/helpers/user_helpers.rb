def sign_up
  visit '/users/new'
  fill_in :name, with: 'Cloud Strife'
  fill_in :email, with: 'cloud@final-fantasy-vii.com'
  fill_in :username, with: 'buster_sword'
  fill_in :password, with: 'tifalockheart'
  fill_in :password_confirmation, with: 'tifalockheart'
  click_button 'Sign up'
end

def sign_up_pw_not_match
  visit '/users/new'
  fill_in :name, with: 'Cloud Strife'
  fill_in :email, with: 'cloud@final-fantasy-vii.com'
  fill_in :username, with: 'buster_sword'
  fill_in :password, with: 'TifaLockheart'
  fill_in :password_confirmation, with: 'AerithGainsborough'
  click_button 'Sign up'
end
