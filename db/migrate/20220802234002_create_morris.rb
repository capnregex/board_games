class CreateMorris < ActiveRecord::Migration[7.0]
  def change
    create_table :morris do |t|
      t.integer :men

      t.timestamps
    end
  end
end
