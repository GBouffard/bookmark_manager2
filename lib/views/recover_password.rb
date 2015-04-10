post '/recover_password' do
  user = User.first(email: email)
  # avoid having to memorise ascii codes
  user.password_token = (1..64).map{('A'..'Z').to_a.sample}.join
  user.password_token_timestamp = Time.now
  user.save
end
