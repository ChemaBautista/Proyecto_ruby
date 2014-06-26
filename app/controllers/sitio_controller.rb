


class SitioController < ApplicationController
  def index
a=""
b=""
c=""
d=""
e=""

    File.open('/home/oaxacarb/Escritorio/Ruby/proyecto/fut.txt','r') do |f1|
           while linea=f1.gets
                a<<a+linea
           end
    end
  File.open('/home/oaxacarb/Escritorio/Ruby/proyecto/computacio.txt','r') do |f1|
           while linea2=f1.gets
                b<<b+linea2
           end
    end
     File.open('/home/oaxacarb/Escritorio/Ruby/proyecto/escuela.txt','r') do |f1|
           while linea3=f1.gets
                c<<c+linea3
           end
    end   
  File.open('/home/oaxacarb/Escritorio/Ruby/proyecto/medici.txt','r') do |f1|
           while linea4=f1.gets
                d<<d+linea4
           end
    end    
File.open('/home/oaxacarb/Escritorio/Ruby/proyecto/hogar.txt','r') do |f1|
           while linea5=f1.gets
                e<<e+linea5
           end
    end           
    comi=["comida","rica","gastronomia","receta","restaurant","deliciosa","crema","pasta","pollo","atun"]
   a=a.downcase
b=b.downcase
c=c.downcase
d=d.downcase
e=e.downcase
 
   
      @titulo="Pagina Principal"
      if request.post?
       params.permit!
        @user=params[:cate][:texto]   
       @user=@user.downcase
nf=Jaccard.coefficient(a.split(" "),@user.split(" "))
   np=Jaccard.coefficient(b.split(" "),@user.split(" "))
   nc=Jaccard.coefficient(comi,@user.split(" "))
   npo=Jaccard.coefficient(c.split(" "),@user.split(" "))
   nm=Jaccard.coefficient(d.split(" "),@user.split(" "))
   nh=Jaccard.coefficient(e.split(" "),@user.split(" "))
 
if(nf>0&&nf>np&&nf>nc&&nf>npo&&nf>nm&&nf>nh) 
        flash[:notice]="El texto #{@user} esta relacionado  con: Futball  Coeficiente #{nf}   "    
    elsif (np>0&&np>nf&&np>nc&&np>npo&&np>nm&&np>nh) 
        flash[:notice]="El texto #{@user} esta relacionado  con: Computacion  Coeficiente #{np}"    
    elsif (nc>0&&nc>nf&&nc>np&&nc>npo&&nc>nm&&nc>nh) 
          flash[:notice]="El texto #{@user} esta relacionado  con:  Comida   "  
     elsif (npo>0&&npo>nf&&npo>np&&npo>nc&&npo>nm&&npo>nh) 
          flash[:notice]="El texto #{@user} esta relacionado  con:  Escuela"
     elsif (nm>0&&nm>nf&&nm>np&&nm>nc&&nm>npo&&nm>nh) 
           flash[:notice]="El texto #{@user} esta relacionado  con: Medicina"
     elsif (nh>0&&nh>nf&&nh>np&&nh>nc&&nh>npo&&nh>nm) 
          flash[:notice]="El texto #{@user} esta relacionado  con:  Hogar"
    else
        flash[:notice]="El texto #{@user} esta relacionado  con:  No hay clasificacion para este texto"  
    end
        
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

