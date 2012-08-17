Startonrails::Application.routes.draw do
  devise_for :users, :path => 'usuarios', :path_names => {:sign_in => 'login', :sign_out => 'sair', :password => 'senha', :confirmation => 'confirmacao', :unlock => 'desbloquear', :sign_up => 'registrar'}

  resources :posts do
    collection do
      put :publish
      put :moderated
    end
  end
  resources :comments
  root :to => 'home#index'
end
