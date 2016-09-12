Rails.application.routes.draw do
  root 'welcome#index'
  post '/', to: "welcome#index"
  get '/search', to: "search#index"
end
