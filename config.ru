require 'dashing'

configure do
  set :auth_token, 'bad18eba1ff45jk7858b8ae88a77fa30'

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application