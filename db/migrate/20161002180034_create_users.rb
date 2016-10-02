class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :avatar
      t.datetime :last_login_time
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
