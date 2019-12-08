class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :nome
      t.string :end
      t.string :desc
      t.string :tipo
      t.string :image

      t.timestamps
    end
  end
end
