class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :code
      t.string :program

      t.timestamps null: false
    end
  end
end
