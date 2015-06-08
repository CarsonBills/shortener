Rails.application.routes.draw do
  get "/:id" => "links#show", :as => "link"
  post "/" => "links#create", :as => "links"
  get "links/new", :as => "new_link"
  root "links#new"
end
