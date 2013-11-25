BlingBlingApp::Application.routes.draw do

  root to: 'welcome#index'

  resources :users do
    resources :accounts, shallow: true do
      resources :transactions, shallow: true
    end
  end

  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'
end
#== Route Map
# Generated on 24 Nov 2013 18:54
#
#    account_transactions GET    /accounts/:account_id/transactions(.:format)     transactions#index
#                         POST   /accounts/:account_id/transactions(.:format)     transactions#create
# new_account_transaction GET    /accounts/:account_id/transactions/new(.:format) transactions#new
#        edit_transaction GET    /transactions/:id/edit(.:format)                 transactions#edit
#             transaction GET    /transactions/:id(.:format)                      transactions#show
#                         PUT    /transactions/:id(.:format)                      transactions#update
#                         DELETE /transactions/:id(.:format)                      transactions#destroy
#           user_accounts GET    /users/:user_id/accounts(.:format)               accounts#index
#                         POST   /users/:user_id/accounts(.:format)               accounts#create
#        new_user_account GET    /users/:user_id/accounts/new(.:format)           accounts#new
#            edit_account GET    /accounts/:id/edit(.:format)                     accounts#edit
#                 account GET    /accounts/:id(.:format)                          accounts#show
#                         PUT    /accounts/:id(.:format)                          accounts#update
#                         DELETE /accounts/:id(.:format)                          accounts#destroy
#                   users GET    /users(.:format)                                 users#index
#                         POST   /users(.:format)                                 users#create
#                new_user GET    /users/new(.:format)                             users#new
#               edit_user GET    /users/:id/edit(.:format)                        users#edit
#                    user GET    /users/:id(.:format)                             users#show
#                         PUT    /users/:id(.:format)                             users#update
#                         DELETE /users/:id(.:format)                             users#destroy
#                   login POST   /login(.:format)                                 session#create
#                  logout GET    /logout(.:format)                                session#destroy
