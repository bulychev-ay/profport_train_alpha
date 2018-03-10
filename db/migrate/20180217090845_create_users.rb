class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :email
      t.string :password
      t.string :password_confirmation
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
