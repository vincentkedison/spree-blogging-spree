Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :blog_entries
  end

  scope Spree::Config['blog_alias'], as: 'blog' do
    get '/tag/:tag' => 'blog_entries#tag', :as => :tag
    get '/category/:category' => 'blog_entries#category', :as => :category
    get '/:year/:month/:day/:slug' => 'blog_entries#show', :as => :entry_permalink
    get '/feed' => 'blog_entries#feed', :as => :feed, :format => :rss
    get '/' => 'blog_entries#index'
  end
end

