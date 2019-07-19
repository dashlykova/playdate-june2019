class AddKindergartenRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :kindergarten, foreign_key: true
  end
end
