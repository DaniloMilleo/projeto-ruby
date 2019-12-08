class Place < ApplicationRecord
  	mount_uploader :image, ImageUploader
  	
	has_many :ratings, dependent: :destroy
	validates :nome, length: { in: 5..30 }
	validates :end, length: { in: 5..30 }
	validates :desc, length: { in: 5..50 }
	validates :tipo, inclusion: { in: %w(shopping restaurante evento academia hotel balada)}
	def update_rating
		ratings = Rating.where(place:self)
		ratings_numero = ratings.length
		total = 0
		ratings.each do |rating|
			total+=rating.nota
		end
		media = total / ratings_numero
		self.rating = media
		self.save
	end
end