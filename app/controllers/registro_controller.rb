class RegistroController < ApplicationController
  def index
    if request.post?
       params.permit!
       @user=User.new(params[:user])
      if  @user.save
       flash[:notice]="El usuario #{@user.nombre} se ha guardado correctamente"
      redirect_to home_url
      end
    end
  end
end
def login 
    if request.post?
       p_user=User.new(params[:user])
       user=User.find_by_nombre_and_password(p_user.nombre,p_user.password)
       if user
          flash[:notice]="Bienvenido"
          redirect_to home_url
       else
          flash[:notice]="Usuario invalido"
          redirect_to login_url
       end
     end
end
