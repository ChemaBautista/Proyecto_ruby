


class SitioController < ApplicationController
  def index
        @titulo="Pagina Principal"
      if request.post?
       params.permit!
       @user=params[:cate][:texto]
       flash[:notice]="El texto #{@user} esta relacionado   #{@a} con:"
      redirect_to home_url
    end
  end
   

  def quienes
      @titulo="Integrantes del equipo"
  end

  def ayuda
     @titulo="Ayuda"
  end
end

