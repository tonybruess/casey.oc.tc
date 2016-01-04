# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Casey::Application.initialize!

Casey::Application.config.styles = [
    "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css",
    "//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css",
    "application",
]

Casey::Application.config.scripts = [
    "//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js",
    "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js",
    "application",
]
