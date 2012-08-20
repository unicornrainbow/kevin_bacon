class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title

      t.timestamps
    end

    add_index :movies, :title, :unique => true
  end
end
