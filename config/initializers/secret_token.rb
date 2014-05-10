# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
 token_file=Rails.root.join('.secret')
 if File.exist?(token_file)
 	#Use the existing token.
 else
 	#Generate a new token and store it in token_file.
 	token = SecureRandom.hex(64)
 	File.write(token_file,token)
 	token
  end
 end

SampleApp::Application.config.secret_key_base = 'b27d9e74a5a3030be94800fe849640f2ca77094b2a762ccc6064e4c3fde9fdd1b90f55b6e4698e4973e23e2f0c56c6bab3245845245c4a14af6882d98fdb195b'
