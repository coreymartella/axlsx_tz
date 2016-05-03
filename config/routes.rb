Rails.application.routes.draw do
  get '/tz:format' => 'application#tz'
end
