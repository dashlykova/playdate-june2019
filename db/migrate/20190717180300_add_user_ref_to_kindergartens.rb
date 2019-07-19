class AddUserRefToKindergartens < ActiveRecord::Migration[5.2]
  def change
    add_reference :kindergartens, :user, foreign_key: true
  end
end
