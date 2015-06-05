class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :email, :null => false, :unique => true
      t.string :password, :null => false
      t.timestamps null: false
    end
  end
end
