Rails.application.routes.draw do
  namespace :api, defaults:  { format: :json }, constaints: { subdomain: 'api' }, path: '/' do

  end
end
