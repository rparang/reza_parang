RezaParang::Application.routes.draw do
  scope "api" do
    resources :articles
  end

  root :to => "main#index"
  match '*path', :to => "main#index"
end
