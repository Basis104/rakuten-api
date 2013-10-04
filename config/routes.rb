RakutenSample::Application.routes.draw do
  root 'itemsearch#result#'
  get '/result' => 'itemsearch#result'
  post '/search' => 'bookmark#search'
  get  '/index' => 'bookmark#index'
end
