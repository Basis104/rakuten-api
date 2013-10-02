RakutenSample::Application.routes.draw do
  root 'itemsearch#result'
  get '/result' => 'itemsearch#result'
  get '/bookmark' => 'bookmark#index'
end
