class CreateKindergartens < ActiveRecord::Migration[5.2]
  def change
    create_table :kindergartens do |t|
      t.string :name
      t.string :kommun
      t.text :address

      t.timestamps
    end
  end
end
