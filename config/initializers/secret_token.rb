# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Mine::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : 'f693711bdf4e043c79fbfba36397e077d107027a3e6b9b4c2fea6e617f762a7b8c556ab43c5b20395ab866057b635d1d8f0b8b01f8836d4c85f12d874357cc7'
