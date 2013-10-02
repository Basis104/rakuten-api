RakutenSample::Application.routes.draw do
  root 'itemsearch#index'
  get '/result' => 'itemsearch#result'
  get '/bookmark' => 'bookmark#index'
end
