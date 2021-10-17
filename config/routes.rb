Rails.application.routes.draw do
  devise_for :admins, skip: :all

  get 'authentication_failure', to: 'application#authentication_failure', as: :authentication_failure

  namespace 'api' do
    namespace 'v1' do
      scope 'teachers' do
        get 'index', to: 'teachers#index'
        get 'show/:id', to: 'teachers#show'
        post 'create', to: 'teachers#create'
        patch 'update/:id', to:'teachers#update'
        delete 'delete/:id', to:'teachers#delete'
        get 'my_students/:id', to:"teachers#my_students"
      end
      scope 'students' do
        get 'index', to: 'students#index'
        get 'show/:id', to: 'students#show'
        post 'create', to: 'students#create'
        patch 'update/:id', to: 'students#update'
        delete "delete/:id", to: "students#delete"
      end
      scope 'languages' do
        get 'index', to: 'languages#index'
        get 'show/:id', to: 'languages#show'
        post 'create', to: 'languages#create'
        patch 'update/:id', to: 'languages#update'
        delete "delete/:id", to: "languages#delete"
      end
      scope 'admins' do
        get 'login', to: 'admins#login'
        get 'show', to: 'admins#show'
        get 'logout', to: 'admins#logout'
      end
    end
  end
end
