# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Mine::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION SECRET'] : '01331dfd59e9a6c35dadf7358606ef8c82152c86bdb6c5cabc4e3847714f1999260994322e1d464c0671fc00be97c2c02a9ae2d7c4fb11a3e8691cac8e6a01b'
