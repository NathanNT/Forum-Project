class UserController < ApplicationController
	attr_accessor :password, :password_confirmation
  def show
      # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    end

   def new
   end

   def create
    @user = User.create(age: "18",city_id: 3,first_name: params[:firstname],last_name: params[:secondname],password: params[:password],password_confirmation: params[:passwordverif],description: params[:bio],email: params[:email] )
    if @user.save
      redirect_to "/gossips"
      @@num = "1"
    else
      render 'new' 
    end
  end

end
