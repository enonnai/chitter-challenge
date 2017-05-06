feature 'User sign up form' do

  scenario 'User can sign up' do
    sign_up
    expect { sign_up }.to change { User.count }.by 1
    expect(current_path).to eq '/welcome'
    expect(User.last.email).to eq 'chun-li@streetfighter.com'
  end
end