# app/controllers/users_controller.rb
class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login register]
   
  # GET /users
    def index
      @users = User.all
    
      render json: @users
    end
  
    # GET /users/:id
    def show
      @user = User.find(params[:id])
      render json: @user
    end
   
    # POST /register
    def register
      @user = User.create(user_params)
     if @user.save
      response = { message: 'User created successfully'}
      render json: response, status: :created 
     else
      render json: @user.errors, status: :bad
     end 
    end

    def login
      authenticate params[:email], params[:password]
    end
    def test
      render json: {
            message: 'You have passed authentication and authorization test'
          }
    end
  
    private
  
    def user_params
      params.permit(
        :name,
        :email,
        :password
      )
    end

    def authenticate(email, password)
      command = AuthenticateUser.call(email, password)
      if command.success?
        binding.pry
        logged_user = User.find_by(email: email)
        render json: {
          access_token: command.result,
          message: 'Login Successful',
          user: logged_user,
          services: logged_user.services_by_skill,
        }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
     end  
  end