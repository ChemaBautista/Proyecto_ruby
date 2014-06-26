class ProductosController < ApplicationController
  def index
      @productos = Productos.all
           respond_to do |format|
           format.html
           format.xml
         end
    
  end

  def new
       @productos= Productos.new
      if request.post?
       params.permit!
       @prod=Productos.new(params[:prod])
      if  @prod.save
      
      redirect_to home_url
          end
  end
  end

def create
       @producto=Producto.new(params[:productos])
     @producto.save
end

  def edit
  end

  def delet
  end

  def search
  end
end
