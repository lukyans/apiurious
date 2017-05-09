Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :github, ENV["client_id"], ENV["client_secret_id"], :provider_ignores_state => true
end