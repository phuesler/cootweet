# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_coopict_session',
  :secret      => '1797c5a4e91febca3c4d3aeec8b4f1266906f772ca782c322919bacc1edc94e2e09de605a54878a67fb960add5fa76e43603043fad81d3803e08ffd215f514b5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
