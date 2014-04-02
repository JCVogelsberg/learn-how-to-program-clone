Lhtp::Application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons/new', {:via => :post, :to => 'lessons#create'})
  match('lessons/:number/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:number/destroy', {:via => :get, :to => 'lessons#destroy'})
  match('lessons/:number', {:via => :get, :to => 'lessons#show'})
  match('lessons/:number', {:via => [:patch, :put], :to => 'lessons#update'})

end
