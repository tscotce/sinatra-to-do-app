class UsersController < ApplicationController

  get '/login' do
    erb 'users/login'
  end

  post '/login' do
    login
    erb :index
  end

  get '/signup' do
    erb 'users/signup'
  end

  post '/signup' do
    if params[:name].present? && params[:email].present? && params[:password].present?
      @user = User.create(name: params[:name], email: params[:email], password: params[:password])
      session[:id] = @user.id
      login
    erb :index
  end

  get '/logout' do
    logout
  end

end
