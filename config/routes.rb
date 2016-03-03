Rails.application.routes.draw do
  get 'students/new'

  get 'students/create'

  get 'students/update'

  get 'students/edit'

  get 'students/destroy'

  get 'students/index'

  devise_for :users

  get 'charges/create'

  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

end
