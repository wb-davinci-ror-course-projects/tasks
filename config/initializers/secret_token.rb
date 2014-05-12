# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Mine::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION SECRET'] : '62f1d6b36af81f03523da64f245899623e7388563e7bc9865d0e3e3de808eda266c1696e527b1cacba260026fe80092fcacf9b67c0dc54d7ef130335a4f6c4db'
