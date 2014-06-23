
require "rubygems.rb"
require "jaccard.rb"
a=""
b=""
c=""
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
     File.open('poli.txt','r') do |f1|
           while linea3=f1.gets
                c<<c+linea3
puts c
           end
    end             
    comi=["comida","rica","gastronomia","receta","restaurant","deliciosa","crema","pasta","pollo","atun"]
    STDOUT.flush
    con=gets.chomp
    con=con.downcase
   a=a.downcase
 
   nf=Jaccard.coefficient(a.split(" "),con.split(" "))
   np=Jaccard.coefficient(b.split(" "),con.split(" "))
   nc=Jaccard.coefficient(comi,con.split(" "))
   npo=Jaccard.coefficient(c.split(" "),con.split(" "))
puts nf
 puts np
 puts nc
 puts npo
    if(nf>0&&nf>np&&nf>nc&&nf>npo) then
       puts "Futball" 
    elsif (np>0&&np>nf&&np>nc&&np>npo) 
         puts "Computacion"    
    elsif (nc>0&&nc>nf&&nc>np&&nc>npo) 
         puts "Comida"  
     elsif (npo>0&&npo>nf&&npo>np&&npo>nc) 
         puts "Politica"
    else
       puts "No hay clasificacion para este texto"  
    end
 end

