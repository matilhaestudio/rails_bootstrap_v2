class CreateSamples < ActiveRecord::Migration[5.0]
  def change
    create_table :samples do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone, limit: 15
      t.string :email
      t.string :zipcode, limit: 9
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :complement
      t.date :birthday
      t.string :picture
      t.string :cpf, limit: 14
      t.string :rg,  limit: 12
      t.timestamps
    end
  end
end
