class HomeController < ApplicationController
  def index
  end

  def listar
	 tipo = params[:tipo]
	 if tipo == nil
		@places = Place.all
    @categoria = nil
	 else
		@places = Place.where(tipo:tipo)
    @categoria = (tipo + 's').capitalize
    if @categoria == 'Hotels'
      @categoria = 'Hotéis'
    end
    end
  end
  
  def categorias
    
  end
end
