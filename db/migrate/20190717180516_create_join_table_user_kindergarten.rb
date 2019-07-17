class CreateJoinTableUserKindergarten < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :kindergartens do |t|
      # t.index [:user_id, :kindergarten_id]
      # t.index [:kindergarten_id, :user_id]
    end
  end
end
