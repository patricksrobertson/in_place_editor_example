# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_in_place_edit_test_session',
  :secret      => 'a202601fbbe6bcd1e4e45bc097acc5e338bdf94489156c538650ae88ae52a881f78bc88789d815587eb94e1aafe89168dfe8fbba0088945a7b2b99990ba0be0b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
