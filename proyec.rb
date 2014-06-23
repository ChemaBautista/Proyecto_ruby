
require "rubygems"
require "jaccard"
class  JaccarApp
a=""
b=""
c=""
d=""
e=""
result=""
    File.open('fut.txt','r') do |f1|
           while linea=f1.gets
                a<<a+linea
           end
    end
  File.open('computacio.txt','r') do |f1|
           while linea2=f1.gets
                b<<b+linea2
           end
    end
     File.open('escuela.txt','r') do |f1|
           while linea3=f1.gets
                c<<c+linea3
           end
    end   
  File.open('medici.txt','r') do |f1|
           while linea4=f1.gets
                d<<d+linea4
           end
    end    
File.open('hogar.txt','r') do |f1|
           while linea5=f1.gets
                e<<e+linea5
           end
    end           
    comi=["comida","rica","gastronomia","receta","restaurant","deliciosa","crema","pasta","pollo","atun"]
    STDOUT.flush
    con=gets.chomp
    con=con.downcase

   a=a.downcase
b=b.downcase
c=c.downcase
d=d.downcase
e=e.downcase
 
   nf=Jaccard.coefficient(a.split(" "),con.split(" "))
   np=Jaccard.coefficient(b.split(" "),con.split(" "))
   nc=Jaccard.coefficient(comi,con.split(" "))
   npo=Jaccard.coefficient(c.split(" "),con.split(" "))
   nm=Jaccard.coefficient(d.split(" "),con.split(" "))
   nh=Jaccard.coefficient(e.split(" "),con.split(" "))
puts nf
 puts np
 puts nc
 puts npo
puts nm
puts nh
    if(nf>0&&nf>np&&nf>nc&&nf>npo&&nf>nm&&nf>nh) 
        puts "Futball" 
    elsif (np>0&&np>nf&&np>nc&&np>npo&&np>nm&&np>nh) 
       puts "Computacion"    
    elsif (nc>0&&nc>nf&&nc>np&&nc>npo&&nc>nm&&nc>nh) 
         puts "Comida"  
     elsif (npo>0&&npo>nf&&npo>np&&npo>nc&&npo>nm&&npo>nh) 
         puts "Escuela"
     elsif (nm>0&&nm>nf&&nm>np&&nm>nc&&nm>npo&&nm>nh) 
         puts "Medicina"
     elsif (nh>0&&nh>nf&&nh>np&&nh>nc&&nh>npo&&nh>nm) 
         puts "Hogar"
    else
       puts "No hay clasificacion para este texto"  
    end

 end

