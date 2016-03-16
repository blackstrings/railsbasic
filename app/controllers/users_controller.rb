class UsersController < ApplicationController
  
  #rails naming convention basic instruction
  #controllers are plural UsersController not UserController
  #so to generate a controller, do plural example:
  #rails generate controller Users index show new edit delete
  # you do not need to create all 8 actions, the above 5 is efficient
  #(new,create,index,show,edit,update,delete,destroy)
  #after generate, remove generated get routes and use instead 'resources :users'


  #################### create
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	
  	if @user.save
  		redirect_to users_path
  	else
  		redirect_to new_user_path
  	end

  end
  ################### end of create

  ################### Read
  #read single record
  def show
  end

  #read a list of record
  def index

  	#longer method to auto sort if scopes are not setup
  	#@users = User.order("id ASC")

  	#shorter using scopes - where it's defined in the User.rb model
  	#all users sorted will be found and put inside of users
  	#and be accessible in the view
  	@users = User.sorted

  end
  ################### end of read

  #update
  def edit
  end

  #def update
  #end

  #delete
  #def delete
  #end

  #def destroy
  #end

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :avatar)
  	#params.require(:user).permit(:avatar, :first_name, :last_name, :about_me, :school, :major, :grad_gpa, :gmat)
  end

end
