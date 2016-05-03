Rails.application.routes.draw do
  get '/tz.:format' => 'pages#tz'
end
