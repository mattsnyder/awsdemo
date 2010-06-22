# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_awsdemo_session',
  :secret      => 'df5864b7ad92e17a9ab640f7bbc29581e6c6998b26a3cfe0c088dea030aeab15713d6acbd7547eea34c86eb41becf8ed87b37259320251a1bef97f9ec25c9ca5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
