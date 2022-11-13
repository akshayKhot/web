require 'rack'
require_relative './app'

use Rack::Reloader, 0

# Serve all requests beginning with /public from the "public" folder 
use Rack::Static, urls: [ '/public' ]

run App.new
