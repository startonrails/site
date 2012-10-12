Startonrails::Application.routes.draw do
  scope '/admin' do
		devise_for :users, :path => 'usuarios', :path_names => {:sign_in => 'login', :sign_out => 'sair', :password => 'senha', :confirmation => 'confirmacao', :unlock => 'desbloquear', :sign_up => 'registrar'}

		resources :posts do
			resources :comments
			
		  collection do
		    put :publish
		    put :moderated
		  end
		end

  end

  get 'post/:id' => 'home#post', as: :home_post

  root :to => 'home#index'
end
