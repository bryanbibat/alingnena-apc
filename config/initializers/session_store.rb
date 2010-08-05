# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_alingnena-app_session',
  :secret      => 'e00dec080f12bb9cc607049ee72044e003fa5c7d0d8e94f1083875bc9f779dc1fcb6f4f84506bc2d692b5ba3ba9105f277b6134d4f2c7cd1e572c39276f8ba11'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
