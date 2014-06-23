module ApplicationHelper
   def enlace(nombre,url)
     link_to_unless_current nombre , url
   end 
end
