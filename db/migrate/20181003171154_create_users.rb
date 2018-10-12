class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :company_name
      t.string :website
      t.string :company_email
      t.string :name_on_card
      t.string :card_number
      t.date :expiration

      t.timestamps
    end
  end
end
