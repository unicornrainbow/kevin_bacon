class CreateDegreeOfSeparations < ActiveRecord::Migration
  def change
    create_table :degree_of_separations do |t|
      t.references :actor
      t.references :connection
      t.integer :value

      t.timestamps
    end
    add_index :degree_of_separations, :actor_id
    add_index :degree_of_separations, :connection_id
  end
end
