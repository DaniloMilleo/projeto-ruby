class RatingsController < ApplicationController
	before_action :authenticate_user!
	def rate
		nota = params[:nota]
		comentario = params[:comentario]
		lugar = params[:lugar]

		unless rating = Rating.find_by(user: current_user, place_id: lugar)
			rating = Rating.new
		end

		rating.nota = nota
		rating.comment = comentario
		rating.place_id = lugar
		rating.user = current_user

		if rating.save
			place = Place.find(lugar)
			place.update_rating
			mensagem = "O comentario foi salvo"
		else
			mensagem = "O comentario não foi salvo"
		end
		
		redirect_to place_path(lugar), notice: mensagem
	end
end
