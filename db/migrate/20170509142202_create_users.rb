class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :name
      t.string :uid
      t.string :oauth_token
      t.string :avatar

      t.datetime "created_at",    null: false
      t.datetime "updated_at",    null: false
    end
  end
end
