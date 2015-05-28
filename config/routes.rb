Rails.application.routes.draw do
  get "/" => 'pages#home'
  get "/home" => 'pages#home'
  get "/lottery" => 'pages#lottery'
  get "beer" => 'pages#beer'
end
