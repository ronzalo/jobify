class CreateFavoriteJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_jobs do |t|
      t.string :slug
      t.string :url
      t.json :metadata

      t.timestamps
    end
  end
end
