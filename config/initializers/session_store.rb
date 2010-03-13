# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_teledungeon_session',
  :secret      => 'a7d613921ae5fb8fbf5c52267c8909f0cb9ebe7de80ab50df29e59108e59fe153261e616a8805604e12d0969cfd4683b5650ecf1a6ac43fd07702f0bd8569999'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
