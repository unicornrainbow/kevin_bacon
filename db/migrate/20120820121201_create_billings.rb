class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.references :actor
      t.references :movie

      t.timestamps
    end
    add_index :billings, :actor_id
    add_index :billings, :movie_id
  end
end
