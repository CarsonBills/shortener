Rails.application.routes.draw do
  get "/top" => "links#index", :as => "top"
  get "/:id" => "links#show", :as => "link"
  root "links#new", :as => "new_link"
  post "/" => "links#create", :as => "links"
end
