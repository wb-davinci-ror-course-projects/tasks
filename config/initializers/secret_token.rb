# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Mine::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION SECRET'] : '8d4cc835d9bdd22e80ee05566193cd0bf3ab8fd80da72cb2dce138d367d1be732d93457b5a8d35a8f46e432301819afb4ba7426cc6c5c5278ec67acd76cd6bdb'
