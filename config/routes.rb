Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#root'
  namespace :admin do
    resources :blogs, except: :show
    resources :tags, except: :show 
  end 
  get '/contact', to: 'home#contact', as: 'contact'
  get '/blog', to: 'home#blog', as: 'blog_list'
end
