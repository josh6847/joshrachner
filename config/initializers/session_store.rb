# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_joshrachner_session',
  :secret      => '810783e0179410408e2babcd6cea707c1940519cd0d198226a414f7b5070672f0ffd7bf8f22efe53ca17baa1a8417ed1ca50bf6fd43017c4b5b861522432a268'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
