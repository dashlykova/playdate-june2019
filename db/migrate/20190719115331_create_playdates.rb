class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.string :name
      t.string :email
      t.datetime :date
      t.text :letter

      t.timestamps
    end
  end
end
